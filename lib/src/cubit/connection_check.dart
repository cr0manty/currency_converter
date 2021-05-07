import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:currency_converter/src/repositories/utils/connection_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_check.freezed.dart';

@freezed
class ConnectionCheckState with _$ConnectionCheckState {
  const ConnectionCheckState._();

  const factory ConnectionCheckState.disconnected() =
      DisconnectedConnectionCheckState;

  const factory ConnectionCheckState.connecting() =
      ConnectingConnectionCheckState;

  const factory ConnectionCheckState.cellular() = CellularConnectionCheckState;

  const factory ConnectionCheckState.wifi() = WiFiConnectionCheckState;

  const factory ConnectionCheckState.waiting() = WaitingConnectionCheckState;

  const factory ConnectionCheckState.unknown() = UnknownConnectionCheckState;

  bool get isInternetAvailable =>
      this is WiFiConnectionCheckState || this is CellularConnectionCheckState;

  bool get isConnecting =>
      this is ConnectingConnectionCheckState ||
      this is WaitingConnectionCheckState;

  bool get isDisconnected => this is DisconnectedConnectionCheckState;
}

class ConnectionCheckCubit extends Cubit<ConnectionCheckState> {
  final ConnectionRepo _repo;
  late final StreamSubscription _connectionChanged;

  Timer? _timer;
  int _retriesCount = 1;

  ConnectionCheckCubit(this._repo)
      : super(const ConnectionCheckState.unknown()) {
    _repo.connectivity.checkConnectivity().then(_connectionChangeListener);

    _connectionChanged = _repo.connectivity.onConnectivityChanged.listen(
      _connectionChangeListener,
    );
  }

  Future<void> _connectionChangeListener(ConnectivityResult result) async {
    _timer?.cancel();
    _waiting();

    if (result == ConnectivityResult.none) {
      _disconnected();
    } else {
      _connecting();
      try {
        final isConnected = await _repo.internetLookup();
        if (isConnected) {
          _retriesCount = 1;
          if (result == ConnectivityResult.wifi) {
            _wifiConnected();
          } else {
            _cellularConnected();
          }
        } else {
          _waiting();
          _timer = Timer(
            Duration(seconds: 5 * _retriesCount),
            () => _connectionChangeListener(result),
          );
        }
      } on Object catch (_) {
        _disconnected();

        _timer = Timer(
          Duration(seconds: 5 * _retriesCount),
          () => _connectionChangeListener(result),
        );
        rethrow;
      }
    }
  }

  void _disconnected() => emit(const ConnectionCheckState.disconnected());

  void _waiting() {
    if (state is! UnknownConnectionCheckState) {
      emit(const ConnectionCheckState.waiting());
    }
  }

  void _connecting() {
    if (state is! UnknownConnectionCheckState) {
      emit(const ConnectionCheckState.connecting());
    }
  }

  void _wifiConnected() => emit(const ConnectionCheckState.wifi());

  void _cellularConnected() => emit(const ConnectionCheckState.cellular());

  @override
  Future<void> close() {
    _timer?.cancel();
    _connectionChanged.cancel();
    return super.close();
  }
}
