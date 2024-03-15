// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FCMEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTokenMessageEvent value) initMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTokenMessageEvent value)? initMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTokenMessageEvent value)? initMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMEventCopyWith<$Res> {
  factory $FCMEventCopyWith(FCMEvent value, $Res Function(FCMEvent) then) =
      _$FCMEventCopyWithImpl<$Res, FCMEvent>;
}

/// @nodoc
class _$FCMEventCopyWithImpl<$Res, $Val extends FCMEvent>
    implements $FCMEventCopyWith<$Res> {
  _$FCMEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateTokenMessageEventImplCopyWith<$Res> {
  factory _$$UpdateTokenMessageEventImplCopyWith(
          _$UpdateTokenMessageEventImpl value,
          $Res Function(_$UpdateTokenMessageEventImpl) then) =
      __$$UpdateTokenMessageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateTokenMessageEventImplCopyWithImpl<$Res>
    extends _$FCMEventCopyWithImpl<$Res, _$UpdateTokenMessageEventImpl>
    implements _$$UpdateTokenMessageEventImplCopyWith<$Res> {
  __$$UpdateTokenMessageEventImplCopyWithImpl(
      _$UpdateTokenMessageEventImpl _value,
      $Res Function(_$UpdateTokenMessageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateTokenMessageEventImpl implements _UpdateTokenMessageEvent {
  _$UpdateTokenMessageEventImpl();

  @override
  String toString() {
    return 'FCMEvent.initMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTokenMessageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initMessage,
  }) {
    return initMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initMessage,
  }) {
    return initMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initMessage,
    required TResult orElse(),
  }) {
    if (initMessage != null) {
      return initMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTokenMessageEvent value) initMessage,
  }) {
    return initMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTokenMessageEvent value)? initMessage,
  }) {
    return initMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTokenMessageEvent value)? initMessage,
    required TResult orElse(),
  }) {
    if (initMessage != null) {
      return initMessage(this);
    }
    return orElse();
  }
}

abstract class _UpdateTokenMessageEvent implements FCMEvent {
  factory _UpdateTokenMessageEvent() = _$UpdateTokenMessageEventImpl;
}

/// @nodoc
mixin _$FCMState {}

/// @nodoc
abstract class $FCMStateCopyWith<$Res> {
  factory $FCMStateCopyWith(FCMState value, $Res Function(FCMState) then) =
      _$FCMStateCopyWithImpl<$Res, FCMState>;
}

/// @nodoc
class _$FCMStateCopyWithImpl<$Res, $Val extends FCMState>
    implements $FCMStateCopyWith<$Res> {
  _$FCMStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FCMStateImplCopyWith<$Res> {
  factory _$$FCMStateImplCopyWith(
          _$FCMStateImpl value, $Res Function(_$FCMStateImpl) then) =
      __$$FCMStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FCMStateImplCopyWithImpl<$Res>
    extends _$FCMStateCopyWithImpl<$Res, _$FCMStateImpl>
    implements _$$FCMStateImplCopyWith<$Res> {
  __$$FCMStateImplCopyWithImpl(
      _$FCMStateImpl _value, $Res Function(_$FCMStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FCMStateImpl implements _FCMState {
  _$FCMStateImpl();

  @override
  String toString() {
    return 'FCMState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FCMStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FCMState implements FCMState {
  factory _FCMState() = _$FCMStateImpl;
}
