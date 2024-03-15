// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'synced_gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SyncedGalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchImages,
    required TResult Function(List<ImageModel> images) updateImages,
    required TResult Function(List<ImageModel> images) saveImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
    TResult? Function(List<ImageModel> images)? updateImages,
    TResult? Function(List<ImageModel> images)? saveImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
    TResult Function(List<ImageModel> images)? updateImages,
    TResult Function(List<ImageModel> images)? saveImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnUpdateImagesEvent value) updateImages,
    required TResult Function(_OnImageSavedEvent value) saveImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnUpdateImagesEvent value)? updateImages,
    TResult? Function(_OnImageSavedEvent value)? saveImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnUpdateImagesEvent value)? updateImages,
    TResult Function(_OnImageSavedEvent value)? saveImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncedGalleryEventCopyWith<$Res> {
  factory $SyncedGalleryEventCopyWith(
          SyncedGalleryEvent value, $Res Function(SyncedGalleryEvent) then) =
      _$SyncedGalleryEventCopyWithImpl<$Res, SyncedGalleryEvent>;
}

/// @nodoc
class _$SyncedGalleryEventCopyWithImpl<$Res, $Val extends SyncedGalleryEvent>
    implements $SyncedGalleryEventCopyWith<$Res> {
  _$SyncedGalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnFetchingImagesEventImplCopyWith<$Res> {
  factory _$$OnFetchingImagesEventImplCopyWith(
          _$OnFetchingImagesEventImpl value,
          $Res Function(_$OnFetchingImagesEventImpl) then) =
      __$$OnFetchingImagesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFetchingImagesEventImplCopyWithImpl<$Res>
    extends _$SyncedGalleryEventCopyWithImpl<$Res, _$OnFetchingImagesEventImpl>
    implements _$$OnFetchingImagesEventImplCopyWith<$Res> {
  __$$OnFetchingImagesEventImplCopyWithImpl(_$OnFetchingImagesEventImpl _value,
      $Res Function(_$OnFetchingImagesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnFetchingImagesEventImpl implements _OnFetchingImagesEvent {
  _$OnFetchingImagesEventImpl();

  @override
  String toString() {
    return 'SyncedGalleryEvent.fetchImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFetchingImagesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchImages,
    required TResult Function(List<ImageModel> images) updateImages,
    required TResult Function(List<ImageModel> images) saveImages,
  }) {
    return fetchImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
    TResult? Function(List<ImageModel> images)? updateImages,
    TResult? Function(List<ImageModel> images)? saveImages,
  }) {
    return fetchImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
    TResult Function(List<ImageModel> images)? updateImages,
    TResult Function(List<ImageModel> images)? saveImages,
    required TResult orElse(),
  }) {
    if (fetchImages != null) {
      return fetchImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnUpdateImagesEvent value) updateImages,
    required TResult Function(_OnImageSavedEvent value) saveImages,
  }) {
    return fetchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnUpdateImagesEvent value)? updateImages,
    TResult? Function(_OnImageSavedEvent value)? saveImages,
  }) {
    return fetchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnUpdateImagesEvent value)? updateImages,
    TResult Function(_OnImageSavedEvent value)? saveImages,
    required TResult orElse(),
  }) {
    if (fetchImages != null) {
      return fetchImages(this);
    }
    return orElse();
  }
}

abstract class _OnFetchingImagesEvent implements SyncedGalleryEvent {
  factory _OnFetchingImagesEvent() = _$OnFetchingImagesEventImpl;
}

/// @nodoc
abstract class _$$OnUpdateImagesEventImplCopyWith<$Res> {
  factory _$$OnUpdateImagesEventImplCopyWith(_$OnUpdateImagesEventImpl value,
          $Res Function(_$OnUpdateImagesEventImpl) then) =
      __$$OnUpdateImagesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ImageModel> images});
}

/// @nodoc
class __$$OnUpdateImagesEventImplCopyWithImpl<$Res>
    extends _$SyncedGalleryEventCopyWithImpl<$Res, _$OnUpdateImagesEventImpl>
    implements _$$OnUpdateImagesEventImplCopyWith<$Res> {
  __$$OnUpdateImagesEventImplCopyWithImpl(_$OnUpdateImagesEventImpl _value,
      $Res Function(_$OnUpdateImagesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$OnUpdateImagesEventImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

class _$OnUpdateImagesEventImpl implements _OnUpdateImagesEvent {
  _$OnUpdateImagesEventImpl({required final List<ImageModel> images})
      : _images = images;

  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SyncedGalleryEvent.updateImages(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdateImagesEventImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdateImagesEventImplCopyWith<_$OnUpdateImagesEventImpl> get copyWith =>
      __$$OnUpdateImagesEventImplCopyWithImpl<_$OnUpdateImagesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchImages,
    required TResult Function(List<ImageModel> images) updateImages,
    required TResult Function(List<ImageModel> images) saveImages,
  }) {
    return updateImages(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
    TResult? Function(List<ImageModel> images)? updateImages,
    TResult? Function(List<ImageModel> images)? saveImages,
  }) {
    return updateImages?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
    TResult Function(List<ImageModel> images)? updateImages,
    TResult Function(List<ImageModel> images)? saveImages,
    required TResult orElse(),
  }) {
    if (updateImages != null) {
      return updateImages(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnUpdateImagesEvent value) updateImages,
    required TResult Function(_OnImageSavedEvent value) saveImages,
  }) {
    return updateImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnUpdateImagesEvent value)? updateImages,
    TResult? Function(_OnImageSavedEvent value)? saveImages,
  }) {
    return updateImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnUpdateImagesEvent value)? updateImages,
    TResult Function(_OnImageSavedEvent value)? saveImages,
    required TResult orElse(),
  }) {
    if (updateImages != null) {
      return updateImages(this);
    }
    return orElse();
  }
}

abstract class _OnUpdateImagesEvent implements SyncedGalleryEvent {
  factory _OnUpdateImagesEvent({required final List<ImageModel> images}) =
      _$OnUpdateImagesEventImpl;

  List<ImageModel> get images;
  @JsonKey(ignore: true)
  _$$OnUpdateImagesEventImplCopyWith<_$OnUpdateImagesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnImageSavedEventImplCopyWith<$Res> {
  factory _$$OnImageSavedEventImplCopyWith(_$OnImageSavedEventImpl value,
          $Res Function(_$OnImageSavedEventImpl) then) =
      __$$OnImageSavedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ImageModel> images});
}

/// @nodoc
class __$$OnImageSavedEventImplCopyWithImpl<$Res>
    extends _$SyncedGalleryEventCopyWithImpl<$Res, _$OnImageSavedEventImpl>
    implements _$$OnImageSavedEventImplCopyWith<$Res> {
  __$$OnImageSavedEventImplCopyWithImpl(_$OnImageSavedEventImpl _value,
      $Res Function(_$OnImageSavedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$OnImageSavedEventImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

class _$OnImageSavedEventImpl implements _OnImageSavedEvent {
  _$OnImageSavedEventImpl({required final List<ImageModel> images})
      : _images = images;

  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SyncedGalleryEvent.saveImages(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnImageSavedEventImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnImageSavedEventImplCopyWith<_$OnImageSavedEventImpl> get copyWith =>
      __$$OnImageSavedEventImplCopyWithImpl<_$OnImageSavedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchImages,
    required TResult Function(List<ImageModel> images) updateImages,
    required TResult Function(List<ImageModel> images) saveImages,
  }) {
    return saveImages(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchImages,
    TResult? Function(List<ImageModel> images)? updateImages,
    TResult? Function(List<ImageModel> images)? saveImages,
  }) {
    return saveImages?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchImages,
    TResult Function(List<ImageModel> images)? updateImages,
    TResult Function(List<ImageModel> images)? saveImages,
    required TResult orElse(),
  }) {
    if (saveImages != null) {
      return saveImages(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnUpdateImagesEvent value) updateImages,
    required TResult Function(_OnImageSavedEvent value) saveImages,
  }) {
    return saveImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnUpdateImagesEvent value)? updateImages,
    TResult? Function(_OnImageSavedEvent value)? saveImages,
  }) {
    return saveImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnUpdateImagesEvent value)? updateImages,
    TResult Function(_OnImageSavedEvent value)? saveImages,
    required TResult orElse(),
  }) {
    if (saveImages != null) {
      return saveImages(this);
    }
    return orElse();
  }
}

abstract class _OnImageSavedEvent implements SyncedGalleryEvent {
  factory _OnImageSavedEvent({required final List<ImageModel> images}) =
      _$OnImageSavedEventImpl;

  List<ImageModel> get images;
  @JsonKey(ignore: true)
  _$$OnImageSavedEventImplCopyWith<_$OnImageSavedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SyncedGalleryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SyncedGalleryStateCopyWith<SyncedGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncedGalleryStateCopyWith<$Res> {
  factory $SyncedGalleryStateCopyWith(
          SyncedGalleryState value, $Res Function(SyncedGalleryState) then) =
      _$SyncedGalleryStateCopyWithImpl<$Res, SyncedGalleryState>;
  @useResult
  $Res call({bool isLoading, List<ImageModel> images, String? errorMessage});
}

/// @nodoc
class _$SyncedGalleryStateCopyWithImpl<$Res, $Val extends SyncedGalleryState>
    implements $SyncedGalleryStateCopyWith<$Res> {
  _$SyncedGalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? images = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncedGalleryStateImplCopyWith<$Res>
    implements $SyncedGalleryStateCopyWith<$Res> {
  factory _$$SyncedGalleryStateImplCopyWith(_$SyncedGalleryStateImpl value,
          $Res Function(_$SyncedGalleryStateImpl) then) =
      __$$SyncedGalleryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ImageModel> images, String? errorMessage});
}

/// @nodoc
class __$$SyncedGalleryStateImplCopyWithImpl<$Res>
    extends _$SyncedGalleryStateCopyWithImpl<$Res, _$SyncedGalleryStateImpl>
    implements _$$SyncedGalleryStateImplCopyWith<$Res> {
  __$$SyncedGalleryStateImplCopyWithImpl(_$SyncedGalleryStateImpl _value,
      $Res Function(_$SyncedGalleryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? images = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SyncedGalleryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SyncedGalleryStateImpl implements _SyncedGalleryState {
  _$SyncedGalleryStateImpl(
      {this.isLoading = false,
      final List<ImageModel> images = const [],
      this.errorMessage})
      : _images = images;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ImageModel> _images;
  @override
  @JsonKey()
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SyncedGalleryState(isLoading: $isLoading, images: $images, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncedGalleryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_images), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncedGalleryStateImplCopyWith<_$SyncedGalleryStateImpl> get copyWith =>
      __$$SyncedGalleryStateImplCopyWithImpl<_$SyncedGalleryStateImpl>(
          this, _$identity);
}

abstract class _SyncedGalleryState implements SyncedGalleryState {
  factory _SyncedGalleryState(
      {final bool isLoading,
      final List<ImageModel> images,
      final String? errorMessage}) = _$SyncedGalleryStateImpl;

  @override
  bool get isLoading;
  @override
  List<ImageModel> get images;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SyncedGalleryStateImplCopyWith<_$SyncedGalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
