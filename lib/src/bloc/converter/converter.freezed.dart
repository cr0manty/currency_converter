// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'converter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConverterEventTearOff {
  const _$ConverterEventTearOff();

  FetchConverterEvent fetch() {
    return const FetchConverterEvent();
  }

  ChangeFavouriteStatusConverterEvent changeFavouriteStatus(int id) {
    return ChangeFavouriteStatusConverterEvent(
      id,
    );
  }

  ChangeValueConverterEvent changeValue(String value) {
    return ChangeValueConverterEvent(
      value,
    );
  }

  ChangeSelectedCurrencyConverterEvent changeSelectedCurrency(int id) {
    return ChangeSelectedCurrencyConverterEvent(
      id,
    );
  }
}

/// @nodoc
const $ConverterEvent = _$ConverterEventTearOff();

/// @nodoc
mixin _$ConverterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) changeFavouriteStatus,
    required TResult Function(String value) changeValue,
    required TResult Function(int id) changeSelectedCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? changeFavouriteStatus,
    TResult Function(String value)? changeValue,
    TResult Function(int id)? changeSelectedCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchConverterEvent value) fetch,
    required TResult Function(ChangeFavouriteStatusConverterEvent value)
        changeFavouriteStatus,
    required TResult Function(ChangeValueConverterEvent value) changeValue,
    required TResult Function(ChangeSelectedCurrencyConverterEvent value)
        changeSelectedCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchConverterEvent value)? fetch,
    TResult Function(ChangeFavouriteStatusConverterEvent value)?
        changeFavouriteStatus,
    TResult Function(ChangeValueConverterEvent value)? changeValue,
    TResult Function(ChangeSelectedCurrencyConverterEvent value)?
        changeSelectedCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConverterEventCopyWith<$Res> {
  factory $ConverterEventCopyWith(
          ConverterEvent value, $Res Function(ConverterEvent) then) =
      _$ConverterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConverterEventCopyWithImpl<$Res>
    implements $ConverterEventCopyWith<$Res> {
  _$ConverterEventCopyWithImpl(this._value, this._then);

  final ConverterEvent _value;
  // ignore: unused_field
  final $Res Function(ConverterEvent) _then;
}

/// @nodoc
abstract class $FetchConverterEventCopyWith<$Res> {
  factory $FetchConverterEventCopyWith(
          FetchConverterEvent value, $Res Function(FetchConverterEvent) then) =
      _$FetchConverterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchConverterEventCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res>
    implements $FetchConverterEventCopyWith<$Res> {
  _$FetchConverterEventCopyWithImpl(
      FetchConverterEvent _value, $Res Function(FetchConverterEvent) _then)
      : super(_value, (v) => _then(v as FetchConverterEvent));

  @override
  FetchConverterEvent get _value => super._value as FetchConverterEvent;
}

/// @nodoc

class _$FetchConverterEvent extends FetchConverterEvent {
  const _$FetchConverterEvent() : super._();

  @override
  String toString() {
    return 'ConverterEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchConverterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) changeFavouriteStatus,
    required TResult Function(String value) changeValue,
    required TResult Function(int id) changeSelectedCurrency,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? changeFavouriteStatus,
    TResult Function(String value)? changeValue,
    TResult Function(int id)? changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchConverterEvent value) fetch,
    required TResult Function(ChangeFavouriteStatusConverterEvent value)
        changeFavouriteStatus,
    required TResult Function(ChangeValueConverterEvent value) changeValue,
    required TResult Function(ChangeSelectedCurrencyConverterEvent value)
        changeSelectedCurrency,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchConverterEvent value)? fetch,
    TResult Function(ChangeFavouriteStatusConverterEvent value)?
        changeFavouriteStatus,
    TResult Function(ChangeValueConverterEvent value)? changeValue,
    TResult Function(ChangeSelectedCurrencyConverterEvent value)?
        changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchConverterEvent extends ConverterEvent {
  const factory FetchConverterEvent() = _$FetchConverterEvent;
  const FetchConverterEvent._() : super._();
}

/// @nodoc
abstract class $ChangeFavouriteStatusConverterEventCopyWith<$Res> {
  factory $ChangeFavouriteStatusConverterEventCopyWith(
          ChangeFavouriteStatusConverterEvent value,
          $Res Function(ChangeFavouriteStatusConverterEvent) then) =
      _$ChangeFavouriteStatusConverterEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ChangeFavouriteStatusConverterEventCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res>
    implements $ChangeFavouriteStatusConverterEventCopyWith<$Res> {
  _$ChangeFavouriteStatusConverterEventCopyWithImpl(
      ChangeFavouriteStatusConverterEvent _value,
      $Res Function(ChangeFavouriteStatusConverterEvent) _then)
      : super(_value, (v) => _then(v as ChangeFavouriteStatusConverterEvent));

  @override
  ChangeFavouriteStatusConverterEvent get _value =>
      super._value as ChangeFavouriteStatusConverterEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ChangeFavouriteStatusConverterEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeFavouriteStatusConverterEvent
    extends ChangeFavouriteStatusConverterEvent {
  const _$ChangeFavouriteStatusConverterEvent(this.id) : super._();

  @override
  final int id;

  @override
  String toString() {
    return 'ConverterEvent.changeFavouriteStatus(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeFavouriteStatusConverterEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ChangeFavouriteStatusConverterEventCopyWith<
          ChangeFavouriteStatusConverterEvent>
      get copyWith => _$ChangeFavouriteStatusConverterEventCopyWithImpl<
          ChangeFavouriteStatusConverterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) changeFavouriteStatus,
    required TResult Function(String value) changeValue,
    required TResult Function(int id) changeSelectedCurrency,
  }) {
    return changeFavouriteStatus(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? changeFavouriteStatus,
    TResult Function(String value)? changeValue,
    TResult Function(int id)? changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (changeFavouriteStatus != null) {
      return changeFavouriteStatus(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchConverterEvent value) fetch,
    required TResult Function(ChangeFavouriteStatusConverterEvent value)
        changeFavouriteStatus,
    required TResult Function(ChangeValueConverterEvent value) changeValue,
    required TResult Function(ChangeSelectedCurrencyConverterEvent value)
        changeSelectedCurrency,
  }) {
    return changeFavouriteStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchConverterEvent value)? fetch,
    TResult Function(ChangeFavouriteStatusConverterEvent value)?
        changeFavouriteStatus,
    TResult Function(ChangeValueConverterEvent value)? changeValue,
    TResult Function(ChangeSelectedCurrencyConverterEvent value)?
        changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (changeFavouriteStatus != null) {
      return changeFavouriteStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeFavouriteStatusConverterEvent extends ConverterEvent {
  const factory ChangeFavouriteStatusConverterEvent(int id) =
      _$ChangeFavouriteStatusConverterEvent;
  const ChangeFavouriteStatusConverterEvent._() : super._();

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeFavouriteStatusConverterEventCopyWith<
          ChangeFavouriteStatusConverterEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeValueConverterEventCopyWith<$Res> {
  factory $ChangeValueConverterEventCopyWith(ChangeValueConverterEvent value,
          $Res Function(ChangeValueConverterEvent) then) =
      _$ChangeValueConverterEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$ChangeValueConverterEventCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res>
    implements $ChangeValueConverterEventCopyWith<$Res> {
  _$ChangeValueConverterEventCopyWithImpl(ChangeValueConverterEvent _value,
      $Res Function(ChangeValueConverterEvent) _then)
      : super(_value, (v) => _then(v as ChangeValueConverterEvent));

  @override
  ChangeValueConverterEvent get _value =>
      super._value as ChangeValueConverterEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ChangeValueConverterEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeValueConverterEvent extends ChangeValueConverterEvent {
  const _$ChangeValueConverterEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'ConverterEvent.changeValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeValueConverterEvent &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $ChangeValueConverterEventCopyWith<ChangeValueConverterEvent> get copyWith =>
      _$ChangeValueConverterEventCopyWithImpl<ChangeValueConverterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) changeFavouriteStatus,
    required TResult Function(String value) changeValue,
    required TResult Function(int id) changeSelectedCurrency,
  }) {
    return changeValue(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? changeFavouriteStatus,
    TResult Function(String value)? changeValue,
    TResult Function(int id)? changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchConverterEvent value) fetch,
    required TResult Function(ChangeFavouriteStatusConverterEvent value)
        changeFavouriteStatus,
    required TResult Function(ChangeValueConverterEvent value) changeValue,
    required TResult Function(ChangeSelectedCurrencyConverterEvent value)
        changeSelectedCurrency,
  }) {
    return changeValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchConverterEvent value)? fetch,
    TResult Function(ChangeFavouriteStatusConverterEvent value)?
        changeFavouriteStatus,
    TResult Function(ChangeValueConverterEvent value)? changeValue,
    TResult Function(ChangeSelectedCurrencyConverterEvent value)?
        changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue(this);
    }
    return orElse();
  }
}

abstract class ChangeValueConverterEvent extends ConverterEvent {
  const factory ChangeValueConverterEvent(String value) =
      _$ChangeValueConverterEvent;
  const ChangeValueConverterEvent._() : super._();

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeValueConverterEventCopyWith<ChangeValueConverterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeSelectedCurrencyConverterEventCopyWith<$Res> {
  factory $ChangeSelectedCurrencyConverterEventCopyWith(
          ChangeSelectedCurrencyConverterEvent value,
          $Res Function(ChangeSelectedCurrencyConverterEvent) then) =
      _$ChangeSelectedCurrencyConverterEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ChangeSelectedCurrencyConverterEventCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res>
    implements $ChangeSelectedCurrencyConverterEventCopyWith<$Res> {
  _$ChangeSelectedCurrencyConverterEventCopyWithImpl(
      ChangeSelectedCurrencyConverterEvent _value,
      $Res Function(ChangeSelectedCurrencyConverterEvent) _then)
      : super(_value, (v) => _then(v as ChangeSelectedCurrencyConverterEvent));

  @override
  ChangeSelectedCurrencyConverterEvent get _value =>
      super._value as ChangeSelectedCurrencyConverterEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ChangeSelectedCurrencyConverterEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedCurrencyConverterEvent
    extends ChangeSelectedCurrencyConverterEvent {
  const _$ChangeSelectedCurrencyConverterEvent(this.id) : super._();

  @override
  final int id;

  @override
  String toString() {
    return 'ConverterEvent.changeSelectedCurrency(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeSelectedCurrencyConverterEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ChangeSelectedCurrencyConverterEventCopyWith<
          ChangeSelectedCurrencyConverterEvent>
      get copyWith => _$ChangeSelectedCurrencyConverterEventCopyWithImpl<
          ChangeSelectedCurrencyConverterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) changeFavouriteStatus,
    required TResult Function(String value) changeValue,
    required TResult Function(int id) changeSelectedCurrency,
  }) {
    return changeSelectedCurrency(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? changeFavouriteStatus,
    TResult Function(String value)? changeValue,
    TResult Function(int id)? changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (changeSelectedCurrency != null) {
      return changeSelectedCurrency(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchConverterEvent value) fetch,
    required TResult Function(ChangeFavouriteStatusConverterEvent value)
        changeFavouriteStatus,
    required TResult Function(ChangeValueConverterEvent value) changeValue,
    required TResult Function(ChangeSelectedCurrencyConverterEvent value)
        changeSelectedCurrency,
  }) {
    return changeSelectedCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchConverterEvent value)? fetch,
    TResult Function(ChangeFavouriteStatusConverterEvent value)?
        changeFavouriteStatus,
    TResult Function(ChangeValueConverterEvent value)? changeValue,
    TResult Function(ChangeSelectedCurrencyConverterEvent value)?
        changeSelectedCurrency,
    required TResult orElse(),
  }) {
    if (changeSelectedCurrency != null) {
      return changeSelectedCurrency(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedCurrencyConverterEvent extends ConverterEvent {
  const factory ChangeSelectedCurrencyConverterEvent(int id) =
      _$ChangeSelectedCurrencyConverterEvent;
  const ChangeSelectedCurrencyConverterEvent._() : super._();

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeSelectedCurrencyConverterEventCopyWith<
          ChangeSelectedCurrencyConverterEvent>
      get copyWith => throw _privateConstructorUsedError;
}

ConverterState _$ConverterStateFromJson(Map<String, dynamic> json) {
  return _ConverterState.fromJson(json);
}

/// @nodoc
class _$ConverterStateTearOff {
  const _$ConverterStateTearOff();

  _ConverterState call(
      {bool isLoading = false,
      String value = '',
      List<Currency>? currencyList,
      List<Currency>? favouriteCurrencyList,
      DateTime? updatedAt,
      int? selectedCurrency}) {
    return _ConverterState(
      isLoading: isLoading,
      value: value,
      currencyList: currencyList,
      favouriteCurrencyList: favouriteCurrencyList,
      updatedAt: updatedAt,
      selectedCurrency: selectedCurrency,
    );
  }

  ConverterState fromJson(Map<String, Object> json) {
    return ConverterState.fromJson(json);
  }
}

/// @nodoc
const $ConverterState = _$ConverterStateTearOff();

/// @nodoc
mixin _$ConverterState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  List<Currency>? get currencyList => throw _privateConstructorUsedError;
  List<Currency>? get favouriteCurrencyList =>
      throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get selectedCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConverterStateCopyWith<ConverterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConverterStateCopyWith<$Res> {
  factory $ConverterStateCopyWith(
          ConverterState value, $Res Function(ConverterState) then) =
      _$ConverterStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String value,
      List<Currency>? currencyList,
      List<Currency>? favouriteCurrencyList,
      DateTime? updatedAt,
      int? selectedCurrency});
}

/// @nodoc
class _$ConverterStateCopyWithImpl<$Res>
    implements $ConverterStateCopyWith<$Res> {
  _$ConverterStateCopyWithImpl(this._value, this._then);

  final ConverterState _value;
  // ignore: unused_field
  final $Res Function(ConverterState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? value = freezed,
    Object? currencyList = freezed,
    Object? favouriteCurrencyList = freezed,
    Object? updatedAt = freezed,
    Object? selectedCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      currencyList: currencyList == freezed
          ? _value.currencyList
          : currencyList // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      favouriteCurrencyList: favouriteCurrencyList == freezed
          ? _value.favouriteCurrencyList
          : favouriteCurrencyList // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ConverterStateCopyWith<$Res>
    implements $ConverterStateCopyWith<$Res> {
  factory _$ConverterStateCopyWith(
          _ConverterState value, $Res Function(_ConverterState) then) =
      __$ConverterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String value,
      List<Currency>? currencyList,
      List<Currency>? favouriteCurrencyList,
      DateTime? updatedAt,
      int? selectedCurrency});
}

/// @nodoc
class __$ConverterStateCopyWithImpl<$Res>
    extends _$ConverterStateCopyWithImpl<$Res>
    implements _$ConverterStateCopyWith<$Res> {
  __$ConverterStateCopyWithImpl(
      _ConverterState _value, $Res Function(_ConverterState) _then)
      : super(_value, (v) => _then(v as _ConverterState));

  @override
  _ConverterState get _value => super._value as _ConverterState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? value = freezed,
    Object? currencyList = freezed,
    Object? favouriteCurrencyList = freezed,
    Object? updatedAt = freezed,
    Object? selectedCurrency = freezed,
  }) {
    return _then(_ConverterState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      currencyList: currencyList == freezed
          ? _value.currencyList
          : currencyList // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      favouriteCurrencyList: favouriteCurrencyList == freezed
          ? _value.favouriteCurrencyList
          : favouriteCurrencyList // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConverterState extends _ConverterState {
  const _$_ConverterState(
      {this.isLoading = false,
      this.value = '',
      this.currencyList,
      this.favouriteCurrencyList,
      this.updatedAt,
      this.selectedCurrency})
      : super._();

  factory _$_ConverterState.fromJson(Map<String, dynamic> json) =>
      _$_$_ConverterStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: '')
  @override
  final String value;
  @override
  final List<Currency>? currencyList;
  @override
  final List<Currency>? favouriteCurrencyList;
  @override
  final DateTime? updatedAt;
  @override
  final int? selectedCurrency;

  @override
  String toString() {
    return 'ConverterState(isLoading: $isLoading, value: $value, currencyList: $currencyList, favouriteCurrencyList: $favouriteCurrencyList, updatedAt: $updatedAt, selectedCurrency: $selectedCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConverterState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.currencyList, currencyList) ||
                const DeepCollectionEquality()
                    .equals(other.currencyList, currencyList)) &&
            (identical(other.favouriteCurrencyList, favouriteCurrencyList) ||
                const DeepCollectionEquality().equals(
                    other.favouriteCurrencyList, favouriteCurrencyList)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCurrency, selectedCurrency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(currencyList) ^
      const DeepCollectionEquality().hash(favouriteCurrencyList) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(selectedCurrency);

  @JsonKey(ignore: true)
  @override
  _$ConverterStateCopyWith<_ConverterState> get copyWith =>
      __$ConverterStateCopyWithImpl<_ConverterState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConverterStateToJson(this);
  }
}

abstract class _ConverterState extends ConverterState {
  const factory _ConverterState(
      {bool isLoading,
      String value,
      List<Currency>? currencyList,
      List<Currency>? favouriteCurrencyList,
      DateTime? updatedAt,
      int? selectedCurrency}) = _$_ConverterState;
  const _ConverterState._() : super._();

  factory _ConverterState.fromJson(Map<String, dynamic> json) =
      _$_ConverterState.fromJson;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  List<Currency>? get currencyList => throw _privateConstructorUsedError;
  @override
  List<Currency>? get favouriteCurrencyList =>
      throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  int? get selectedCurrency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConverterStateCopyWith<_ConverterState> get copyWith =>
      throw _privateConstructorUsedError;
}
