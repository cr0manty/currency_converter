import 'package:currency_converter/models/currency.dart';
import 'package:currency_converter/src/repositories/base/base_currency_converter_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'converter.freezed.dart';

part 'converter.g.dart';

@freezed
class ConverterEvent with _$ConverterEvent {
  const ConverterEvent._();

  const factory ConverterEvent.fetch() = FetchConverterEvent;

  const factory ConverterEvent.changeFavouriteStatus(int id) =
      ChangeFavouriteStatusConverterEvent;

  const factory ConverterEvent.changeValue(String value) =
      ChangeValueConverterEvent;

  const factory ConverterEvent.changeSelectedCurrency(int id) =
      ChangeSelectedCurrencyConverterEvent;
}

@freezed
class ConverterState with _$ConverterState {
  const ConverterState._();

  const factory ConverterState({
    @Default(false) bool isLoading,
    @Default('') String value,
    List<Currency>? currencyList,
    List<Currency>? favouriteCurrencyList,
    DateTime? updatedAt,
    int? selectedCurrency,
  }) = _ConverterState;

  factory ConverterState.fromJson(Map<String, dynamic> json) =>
      _$_$_ConverterStateFromJson(json);

  bool get isFavouriteListEmpty => favouriteCurrencyList?.isEmpty ?? true;

  String get currentValue {
    if (value.isEmpty) {
      return '0.0';
    }
    final splitValue = value.split('.');
    if (splitValue.length > 1) {
      if (splitValue[1].isNotEmpty) {
        return value;
      } else {
        return '${value}0';
      }
    }

    return '$value.0';
  }
}

class ConverterBLoC extends HydratedBloc<ConverterEvent, ConverterState> {
  final BaseCurrencyConverterRepo _repo;

  ConverterBLoC(this._repo) : super(const ConverterState());

  @override
  Stream<ConverterState> mapEventToState(ConverterEvent event) =>
      event.when<Stream<ConverterState>>(
        fetch: _fetch,
        changeFavouriteStatus: _changeFavouriteStatus,
        changeValue: _changeValue,
        changeSelectedCurrency: _changeSelectedCurrency,
      );

  Stream<ConverterState> _fetch() async* {
    yield state.copyWith(isLoading: true);
    await Future<void>.delayed(const Duration(seconds: 2));
    yield state.copyWith(isLoading: false);
  }

  Stream<ConverterState> _changeFavouriteStatus(int id) async* {
    // ...
  }

  Stream<ConverterState> _changeValue(String value) async* {
    if (value == 'C') {
      yield state.copyWith(value: '');
    } else {
      yield state.copyWith(value: state.value + value);
    }
  }

  Stream<ConverterState> _changeSelectedCurrency(int id) async* {
    yield state.copyWith(selectedCurrency: id);
  }

  @override
  ConverterState? fromJson(Map<String, dynamic> json) =>
      ConverterState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ConverterState state) => state.toJson();
}
