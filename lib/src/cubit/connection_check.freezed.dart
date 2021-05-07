// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connection_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionCheckStateTearOff {
  const _$ConnectionCheckStateTearOff();

  DisconnectedConnectionCheckState disconnected() {
    return const DisconnectedConnectionCheckState();
  }

  ConnectingConnectionCheckState connecting() {
    return const ConnectingConnectionCheckState();
  }

  CellularConnectionCheckState cellular() {
    return const CellularConnectionCheckState();
  }

  WiFiConnectionCheckState wifi() {
    return const WiFiConnectionCheckState();
  }

  WaitingConnectionCheckState waiting() {
    return const WaitingConnectionCheckState();
  }

  UnknownConnectionCheckState unknown() {
    return const UnknownConnectionCheckState();
  }
}

/// @nodoc
const $ConnectionCheckState = _$ConnectionCheckStateTearOff();

/// @nodoc
mixin _$ConnectionCheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() cellular,
    required TResult Function() wifi,
    required TResult Function() waiting,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? cellular,
    TResult Function()? wifi,
    TResult Function()? waiting,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisconnectedConnectionCheckState value)
        disconnected,
    required TResult Function(ConnectingConnectionCheckState value) connecting,
    required TResult Function(CellularConnectionCheckState value) cellular,
    required TResult Function(WiFiConnectionCheckState value) wifi,
    required TResult Function(WaitingConnectionCheckState value) waiting,
    required TResult Function(UnknownConnectionCheckState value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisconnectedConnectionCheckState value)? disconnected,
    TResult Function(ConnectingConnectionCheckState value)? connecting,
    TResult Function(CellularConnectionCheckState value)? cellular,
    TResult Function(WiFiConnectionCheckState value)? wifi,
    TResult Function(WaitingConnectionCheckState value)? waiting,
    TResult Function(UnknownConnectionCheckState value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionCheckStateCopyWith<$Res> {
  factory $ConnectionCheckStateCopyWith(ConnectionCheckState value,
          $Res Function(ConnectionCheckState) then) =
      _$ConnectionCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionCheckStateCopyWithImpl<$Res>
    implements $ConnectionCheckStateCopyWith<$Res> {
  _$ConnectionCheckStateCopyWithImpl(this._value, this._then);

  final ConnectionCheckState _value;
  // ignore: unused_field
  final $Res Function(ConnectionCheckState) _then;
}

/// @nodoc
abstract class $DisconnectedConnectionCheckStateCopyWith<$Res> {
  factory $DisconnectedConnectionCheckStateCopyWith(
          DisconnectedConnectionCheckState value,
          $Res Function(DisconnectedConnectionCheckState) then) =
      _$DisconnectedConnectionCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectedConnectionCheckStateCopyWithImpl<$Res>
    extends _$ConnectionCheckStateCopyWithImpl<$Res>
    implements $DisconnectedConnectionCheckStateCopyWith<$Res> {
  _$DisconnectedConnectionCheckStateCopyWithImpl(
      DisconnectedConnectionCheckState _value,
      $Res Function(DisconnectedConnectionCheckState) _then)
      : super(_value, (v) => _then(v as DisconnectedConnectionCheckState));

  @override
  DisconnectedConnectionCheckState get _value =>
      super._value as DisconnectedConnectionCheckState;
}

/// @nodoc

class _$DisconnectedConnectionCheckState
    extends DisconnectedConnectionCheckState {
  const _$DisconnectedConnectionCheckState() : super._();

  @override
  String toString() {
    return 'ConnectionCheckState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisconnectedConnectionCheckState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() cellular,
    required TResult Function() wifi,
    required TResult Function() waiting,
    required TResult Function() unknown,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? cellular,
    TResult Function()? wifi,
    TResult Function()? waiting,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisconnectedConnectionCheckState value)
        disconnected,
    required TResult Function(ConnectingConnectionCheckState value) connecting,
    required TResult Function(CellularConnectionCheckState value) cellular,
    required TResult Function(WiFiConnectionCheckState value) wifi,
    required TResult Function(WaitingConnectionCheckState value) waiting,
    required TResult Function(UnknownConnectionCheckState value) unknown,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisconnectedConnectionCheckState value)? disconnected,
    TResult Function(ConnectingConnectionCheckState value)? connecting,
    TResult Function(CellularConnectionCheckState value)? cellular,
    TResult Function(WiFiConnectionCheckState value)? wifi,
    TResult Function(WaitingConnectionCheckState value)? waiting,
    TResult Function(UnknownConnectionCheckState value)? unknown,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class DisconnectedConnectionCheckState extends ConnectionCheckState {
  const factory DisconnectedConnectionCheckState() =
      _$DisconnectedConnectionCheckState;
  const DisconnectedConnectionCheckState._() : super._();
}

/// @nodoc
abstract class $ConnectingConnectionCheckStateCopyWith<$Res> {
  factory $ConnectingConnectionCheckStateCopyWith(
          ConnectingConnectionCheckState value,
          $Res Function(ConnectingConnectionCheckState) then) =
      _$ConnectingConnectionCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectingConnectionCheckStateCopyWithImpl<$Res>
    extends _$ConnectionCheckStateCopyWithImpl<$Res>
    implements $ConnectingConnectionCheckStateCopyWith<$Res> {
  _$ConnectingConnectionCheckStateCopyWithImpl(
      ConnectingConnectionCheckState _value,
      $Res Function(ConnectingConnectionCheckState) _then)
      : super(_value, (v) => _then(v as ConnectingConnectionCheckState));

  @override
  ConnectingConnectionCheckState get _value =>
      super._value as ConnectingConnectionCheckState;
}

/// @nodoc

class _$ConnectingConnectionCheckState extends ConnectingConnectionCheckState {
  const _$ConnectingConnectionCheckState() : super._();

  @override
  String toString() {
    return 'ConnectionCheckState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectingConnectionCheckState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() cellular,
    required TResult Function() wifi,
    required TResult Function() waiting,
    required TResult Function() unknown,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? cellular,
    TResult Function()? wifi,
    TResult Function()? waiting,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisconnectedConnectionCheckState value)
        disconnected,
    required TResult Function(ConnectingConnectionCheckState value) connecting,
    required TResult Function(CellularConnectionCheckState value) cellular,
    required TResult Function(WiFiConnectionCheckState value) wifi,
    required TResult Function(WaitingConnectionCheckState value) waiting,
    required TResult Function(UnknownConnectionCheckState value) unknown,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisconnectedConnectionCheckState value)? disconnected,
    TResult Function(ConnectingConnectionCheckState value)? connecting,
    TResult Function(CellularConnectionCheckState value)? cellular,
    TResult Function(WiFiConnectionCheckState value)? wifi,
    TResult Function(WaitingConnectionCheckState value)? waiting,
    TResult Function(UnknownConnectionCheckState value)? unknown,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class ConnectingConnectionCheckState extends ConnectionCheckState {
  const factory ConnectingConnectionCheckState() =
      _$ConnectingConnectionCheckState;
  const ConnectingConnectionCheckState._() : super._();
}

/// @nodoc
abstract class $CellularConnectionCheckStateCopyWith<$Res> {
  factory $CellularConnectionCheckStateCopyWith(
          CellularConnectionCheckState value,
          $Res Function(CellularConnectionCheckState) then) =
      _$CellularConnectionCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CellularConnectionCheckStateCopyWithImpl<$Res>
    extends _$ConnectionCheckStateCopyWithImpl<$Res>
    implements $CellularConnectionCheckStateCopyWith<$Res> {
  _$CellularConnectionCheckStateCopyWithImpl(
      CellularConnectionCheckState _value,
      $Res Function(CellularConnectionCheckState) _then)
      : super(_value, (v) => _then(v as CellularConnectionCheckState));

  @override
  CellularConnectionCheckState get _value =>
      super._value as CellularConnectionCheckState;
}

/// @nodoc

class _$CellularConnectionCheckState extends CellularConnectionCheckState {
  const _$CellularConnectionCheckState() : super._();

  @override
  String toString() {
    return 'ConnectionCheckState.cellular()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CellularConnectionCheckState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() cellular,
    required TResult Function() wifi,
    required TResult Function() waiting,
    required TResult Function() unknown,
  }) {
    return cellular();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? cellular,
    TResult Function()? wifi,
    TResult Function()? waiting,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (cellular != null) {
      return cellular();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisconnectedConnectionCheckState value)
        disconnected,
    required TResult Function(ConnectingConnectionCheckState value) connecting,
    required TResult Function(CellularConnectionCheckState value) cellular,
    required TResult Function(WiFiConnectionCheckState value) wifi,
    required TResult Function(WaitingConnectionCheckState value) waiting,
    required TResult Function(UnknownConnectionCheckState value) unknown,
  }) {
    return cellular(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisconnectedConnectionCheckState value)? disconnected,
    TResult Function(ConnectingConnectionCheckState value)? connecting,
    TResult Function(CellularConnectionCheckState value)? cellular,
    TResult Function(WiFiConnectionCheckState value)? wifi,
    TResult Function(WaitingConnectionCheckState value)? waiting,
    TResult Function(UnknownConnectionCheckState value)? unknown,
    required TResult orElse(),
  }) {
    if (cellular != null) {
      return cellular(this);
    }
    return orElse();
  }
}

abstract class CellularConnectionCheckState extends ConnectionCheckState {
  const factory CellularConnectionCheckState() = _$CellularConnectionCheckState;
  const CellularConnectionCheckState._() : super._();
}

/// @nodoc
abstract class $WiFiConnectionCheckStateCopyWith<$Res> {
  factory $WiFiConnectionCheckStateCopyWith(WiFiConnectionCheckState value,
          $Res Function(WiFiConnectionCheckState) then) =
      _$WiFiConnectionCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WiFiConnectionCheckStateCopyWithImpl<$Res>
    extends _$ConnectionCheckStateCopyWithImpl<$Res>
    implements $WiFiConnectionCheckStateCopyWith<$Res> {
  _$WiFiConnectionCheckStateCopyWithImpl(WiFiConnectionCheckState _value,
      $Res Function(WiFiConnectionCheckState) _then)
      : super(_value, (v) => _then(v as WiFiConnectionCheckState));

  @override
  WiFiConnectionCheckState get _value =>
      super._value as WiFiConnectionCheckState;
}

/// @nodoc

class _$WiFiConnectionCheckState extends WiFiConnectionCheckState {
  const _$WiFiConnectionCheckState() : super._();

  @override
  String toString() {
    return 'ConnectionCheckState.wifi()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WiFiConnectionCheckState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() cellular,
    required TResult Function() wifi,
    required TResult Function() waiting,
    required TResult Function() unknown,
  }) {
    return wifi();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? cellular,
    TResult Function()? wifi,
    TResult Function()? waiting,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisconnectedConnectionCheckState value)
        disconnected,
    required TResult Function(ConnectingConnectionCheckState value) connecting,
    required TResult Function(CellularConnectionCheckState value) cellular,
    required TResult Function(WiFiConnectionCheckState value) wifi,
    required TResult Function(WaitingConnectionCheckState value) waiting,
    required TResult Function(UnknownConnectionCheckState value) unknown,
  }) {
    return wifi(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisconnectedConnectionCheckState value)? disconnected,
    TResult Function(ConnectingConnectionCheckState value)? connecting,
    TResult Function(CellularConnectionCheckState value)? cellular,
    TResult Function(WiFiConnectionCheckState value)? wifi,
    TResult Function(WaitingConnectionCheckState value)? waiting,
    TResult Function(UnknownConnectionCheckState value)? unknown,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi(this);
    }
    return orElse();
  }
}

abstract class WiFiConnectionCheckState extends ConnectionCheckState {
  const factory WiFiConnectionCheckState() = _$WiFiConnectionCheckState;
  const WiFiConnectionCheckState._() : super._();
}

/// @nodoc
abstract class $WaitingConnectionCheckStateCopyWith<$Res> {
  factory $WaitingConnectionCheckStateCopyWith(
          WaitingConnectionCheckState value,
          $Res Function(WaitingConnectionCheckState) then) =
      _$WaitingConnectionCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WaitingConnectionCheckStateCopyWithImpl<$Res>
    extends _$ConnectionCheckStateCopyWithImpl<$Res>
    implements $WaitingConnectionCheckStateCopyWith<$Res> {
  _$WaitingConnectionCheckStateCopyWithImpl(WaitingConnectionCheckState _value,
      $Res Function(WaitingConnectionCheckState) _then)
      : super(_value, (v) => _then(v as WaitingConnectionCheckState));

  @override
  WaitingConnectionCheckState get _value =>
      super._value as WaitingConnectionCheckState;
}

/// @nodoc

class _$WaitingConnectionCheckState extends WaitingConnectionCheckState {
  const _$WaitingConnectionCheckState() : super._();

  @override
  String toString() {
    return 'ConnectionCheckState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaitingConnectionCheckState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() cellular,
    required TResult Function() wifi,
    required TResult Function() waiting,
    required TResult Function() unknown,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? cellular,
    TResult Function()? wifi,
    TResult Function()? waiting,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisconnectedConnectionCheckState value)
        disconnected,
    required TResult Function(ConnectingConnectionCheckState value) connecting,
    required TResult Function(CellularConnectionCheckState value) cellular,
    required TResult Function(WiFiConnectionCheckState value) wifi,
    required TResult Function(WaitingConnectionCheckState value) waiting,
    required TResult Function(UnknownConnectionCheckState value) unknown,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisconnectedConnectionCheckState value)? disconnected,
    TResult Function(ConnectingConnectionCheckState value)? connecting,
    TResult Function(CellularConnectionCheckState value)? cellular,
    TResult Function(WiFiConnectionCheckState value)? wifi,
    TResult Function(WaitingConnectionCheckState value)? waiting,
    TResult Function(UnknownConnectionCheckState value)? unknown,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class WaitingConnectionCheckState extends ConnectionCheckState {
  const factory WaitingConnectionCheckState() = _$WaitingConnectionCheckState;
  const WaitingConnectionCheckState._() : super._();
}

/// @nodoc
abstract class $UnknownConnectionCheckStateCopyWith<$Res> {
  factory $UnknownConnectionCheckStateCopyWith(
          UnknownConnectionCheckState value,
          $Res Function(UnknownConnectionCheckState) then) =
      _$UnknownConnectionCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownConnectionCheckStateCopyWithImpl<$Res>
    extends _$ConnectionCheckStateCopyWithImpl<$Res>
    implements $UnknownConnectionCheckStateCopyWith<$Res> {
  _$UnknownConnectionCheckStateCopyWithImpl(UnknownConnectionCheckState _value,
      $Res Function(UnknownConnectionCheckState) _then)
      : super(_value, (v) => _then(v as UnknownConnectionCheckState));

  @override
  UnknownConnectionCheckState get _value =>
      super._value as UnknownConnectionCheckState;
}

/// @nodoc

class _$UnknownConnectionCheckState extends UnknownConnectionCheckState {
  const _$UnknownConnectionCheckState() : super._();

  @override
  String toString() {
    return 'ConnectionCheckState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownConnectionCheckState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() cellular,
    required TResult Function() wifi,
    required TResult Function() waiting,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? cellular,
    TResult Function()? wifi,
    TResult Function()? waiting,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisconnectedConnectionCheckState value)
        disconnected,
    required TResult Function(ConnectingConnectionCheckState value) connecting,
    required TResult Function(CellularConnectionCheckState value) cellular,
    required TResult Function(WiFiConnectionCheckState value) wifi,
    required TResult Function(WaitingConnectionCheckState value) waiting,
    required TResult Function(UnknownConnectionCheckState value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisconnectedConnectionCheckState value)? disconnected,
    TResult Function(ConnectingConnectionCheckState value)? connecting,
    TResult Function(CellularConnectionCheckState value)? cellular,
    TResult Function(WiFiConnectionCheckState value)? wifi,
    TResult Function(WaitingConnectionCheckState value)? waiting,
    TResult Function(UnknownConnectionCheckState value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownConnectionCheckState extends ConnectionCheckState {
  const factory UnknownConnectionCheckState() = _$UnknownConnectionCheckState;
  const UnknownConnectionCheckState._() : super._();
}
