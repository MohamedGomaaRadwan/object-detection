// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_detection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ObjectDetectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(InputImage image) onImageProcessing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(InputImage image)? onImageProcessing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(InputImage image)? onImageProcessing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitEvent value) init,
    required TResult Function(_OnImageProcessingEvent value) onImageProcessing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitEvent value)? init,
    TResult? Function(_OnImageProcessingEvent value)? onImageProcessing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitEvent value)? init,
    TResult Function(_OnImageProcessingEvent value)? onImageProcessing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectDetectionEventCopyWith<$Res> {
  factory $ObjectDetectionEventCopyWith(ObjectDetectionEvent value,
          $Res Function(ObjectDetectionEvent) then) =
      _$ObjectDetectionEventCopyWithImpl<$Res, ObjectDetectionEvent>;
}

/// @nodoc
class _$ObjectDetectionEventCopyWithImpl<$Res,
        $Val extends ObjectDetectionEvent>
    implements $ObjectDetectionEventCopyWith<$Res> {
  _$ObjectDetectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnInitEventImplCopyWith<$Res> {
  factory _$$OnInitEventImplCopyWith(
          _$OnInitEventImpl value, $Res Function(_$OnInitEventImpl) then) =
      __$$OnInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnInitEventImplCopyWithImpl<$Res>
    extends _$ObjectDetectionEventCopyWithImpl<$Res, _$OnInitEventImpl>
    implements _$$OnInitEventImplCopyWith<$Res> {
  __$$OnInitEventImplCopyWithImpl(
      _$OnInitEventImpl _value, $Res Function(_$OnInitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnInitEventImpl implements _OnInitEvent {
  _$OnInitEventImpl();

  @override
  String toString() {
    return 'ObjectDetectionEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(InputImage image) onImageProcessing,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(InputImage image)? onImageProcessing,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(InputImage image)? onImageProcessing,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitEvent value) init,
    required TResult Function(_OnImageProcessingEvent value) onImageProcessing,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitEvent value)? init,
    TResult? Function(_OnImageProcessingEvent value)? onImageProcessing,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitEvent value)? init,
    TResult Function(_OnImageProcessingEvent value)? onImageProcessing,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _OnInitEvent implements ObjectDetectionEvent {
  factory _OnInitEvent() = _$OnInitEventImpl;
}

/// @nodoc
abstract class _$$OnImageProcessingEventImplCopyWith<$Res> {
  factory _$$OnImageProcessingEventImplCopyWith(
          _$OnImageProcessingEventImpl value,
          $Res Function(_$OnImageProcessingEventImpl) then) =
      __$$OnImageProcessingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputImage image});
}

/// @nodoc
class __$$OnImageProcessingEventImplCopyWithImpl<$Res>
    extends _$ObjectDetectionEventCopyWithImpl<$Res,
        _$OnImageProcessingEventImpl>
    implements _$$OnImageProcessingEventImplCopyWith<$Res> {
  __$$OnImageProcessingEventImplCopyWithImpl(
      _$OnImageProcessingEventImpl _value,
      $Res Function(_$OnImageProcessingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$OnImageProcessingEventImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as InputImage,
    ));
  }
}

/// @nodoc

class _$OnImageProcessingEventImpl implements _OnImageProcessingEvent {
  _$OnImageProcessingEventImpl({required this.image});

  @override
  final InputImage image;

  @override
  String toString() {
    return 'ObjectDetectionEvent.onImageProcessing(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnImageProcessingEventImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnImageProcessingEventImplCopyWith<_$OnImageProcessingEventImpl>
      get copyWith => __$$OnImageProcessingEventImplCopyWithImpl<
          _$OnImageProcessingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(InputImage image) onImageProcessing,
  }) {
    return onImageProcessing(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(InputImage image)? onImageProcessing,
  }) {
    return onImageProcessing?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(InputImage image)? onImageProcessing,
    required TResult orElse(),
  }) {
    if (onImageProcessing != null) {
      return onImageProcessing(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitEvent value) init,
    required TResult Function(_OnImageProcessingEvent value) onImageProcessing,
  }) {
    return onImageProcessing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitEvent value)? init,
    TResult? Function(_OnImageProcessingEvent value)? onImageProcessing,
  }) {
    return onImageProcessing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitEvent value)? init,
    TResult Function(_OnImageProcessingEvent value)? onImageProcessing,
    required TResult orElse(),
  }) {
    if (onImageProcessing != null) {
      return onImageProcessing(this);
    }
    return orElse();
  }
}

abstract class _OnImageProcessingEvent implements ObjectDetectionEvent {
  factory _OnImageProcessingEvent({required final InputImage image}) =
      _$OnImageProcessingEventImpl;

  InputImage get image;
  @JsonKey(ignore: true)
  _$$OnImageProcessingEventImplCopyWith<_$OnImageProcessingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ObjectDetectionState {
  bool get isLoading => throw _privateConstructorUsedError;
  CustomPaint? get customPaint => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectDetectionStateCopyWith<ObjectDetectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectDetectionStateCopyWith<$Res> {
  factory $ObjectDetectionStateCopyWith(ObjectDetectionState value,
          $Res Function(ObjectDetectionState) then) =
      _$ObjectDetectionStateCopyWithImpl<$Res, ObjectDetectionState>;
  @useResult
  $Res call({bool isLoading, CustomPaint? customPaint, String? errorMessage});
}

/// @nodoc
class _$ObjectDetectionStateCopyWithImpl<$Res,
        $Val extends ObjectDetectionState>
    implements $ObjectDetectionStateCopyWith<$Res> {
  _$ObjectDetectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? customPaint = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customPaint: freezed == customPaint
          ? _value.customPaint
          : customPaint // ignore: cast_nullable_to_non_nullable
              as CustomPaint?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ObjectDetectionStateImplCopyWith<$Res>
    implements $ObjectDetectionStateCopyWith<$Res> {
  factory _$$ObjectDetectionStateImplCopyWith(_$ObjectDetectionStateImpl value,
          $Res Function(_$ObjectDetectionStateImpl) then) =
      __$$ObjectDetectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, CustomPaint? customPaint, String? errorMessage});
}

/// @nodoc
class __$$ObjectDetectionStateImplCopyWithImpl<$Res>
    extends _$ObjectDetectionStateCopyWithImpl<$Res, _$ObjectDetectionStateImpl>
    implements _$$ObjectDetectionStateImplCopyWith<$Res> {
  __$$ObjectDetectionStateImplCopyWithImpl(_$ObjectDetectionStateImpl _value,
      $Res Function(_$ObjectDetectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? customPaint = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ObjectDetectionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customPaint: freezed == customPaint
          ? _value.customPaint
          : customPaint // ignore: cast_nullable_to_non_nullable
              as CustomPaint?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ObjectDetectionStateImpl implements _ObjectDetectionState {
  _$ObjectDetectionStateImpl(
      {this.isLoading = false, this.customPaint, this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final CustomPaint? customPaint;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ObjectDetectionState(isLoading: $isLoading, customPaint: $customPaint, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectDetectionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.customPaint, customPaint) ||
                other.customPaint == customPaint) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, customPaint, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectDetectionStateImplCopyWith<_$ObjectDetectionStateImpl>
      get copyWith =>
          __$$ObjectDetectionStateImplCopyWithImpl<_$ObjectDetectionStateImpl>(
              this, _$identity);
}

abstract class _ObjectDetectionState implements ObjectDetectionState {
  factory _ObjectDetectionState(
      {final bool isLoading,
      final CustomPaint? customPaint,
      final String? errorMessage}) = _$ObjectDetectionStateImpl;

  @override
  bool get isLoading;
  @override
  CustomPaint? get customPaint;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ObjectDetectionStateImplCopyWith<_$ObjectDetectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
