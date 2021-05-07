import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:currency_converter/src/repositories/utils/initial_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_navigation.freezed.dart';

@freezed
class InitialNavigationEvent with _$InitialNavigationEvent {
  const InitialNavigationEvent._();

  const factory InitialNavigationEvent.init() = InitInitialNavigationEvent;
}

@freezed
class InitialNavigationState with _$InitialNavigationState {
  const InitialNavigationState._();

  const factory InitialNavigationState.initial() =
      InitialInitialNavigationState;

  const factory InitialNavigationState.fetched() = FetchedNavigationState;

  const factory InitialNavigationState.error(String msg) = ErrorNavigationState;
}

class InitialNavigationBLoC
    extends Bloc<InitialNavigationEvent, InitialNavigationState> {
  final InitialRepo _repo;

  InitialNavigationBLoC(this._repo)
      : super(const InitialInitialNavigationState()) {
    add(const InitialNavigationEvent.init());
  }

  @override
  Stream<InitialNavigationState> mapEventToState(
          InitialNavigationEvent event) =>
      event.when<Stream<InitialNavigationState>>(
        init: _init,
      );

  @override
  Future<void> close() async {
    await _repo.close();
    return super.close();
  }

  Stream<InitialNavigationState> _init() async* {
    try {
      await _repo.init().timeout(
            const Duration(seconds: 5),
          );

      yield const InitialNavigationState.fetched();
    } on TimeoutException {
      yield const InitialNavigationState.error('');
    } on Object catch (_) {
      yield const InitialNavigationState.error('');
      rethrow;
    }
  }
}
