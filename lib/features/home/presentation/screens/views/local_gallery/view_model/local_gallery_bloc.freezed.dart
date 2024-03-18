// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalGalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function() fetchImages,
    required TResult Function(String id) deleteImage,
    required TResult Function() toggleImageSelection,
    required TResult Function(ImageModel imageModel) selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function()? fetchImages,
    TResult? Function(String id)? deleteImage,
    TResult? Function()? toggleImageSelection,
    TResult? Function(ImageModel imageModel)? selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function()? fetchImages,
    TResult Function(String id)? deleteImage,
    TResult Function()? toggleImageSelection,
    TResult Function(ImageModel imageModel)? selectImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPickImageEvent value) pickImage,
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnImageDeletedEvent value) deleteImage,
    required TResult Function(_OnToggleImageSelectionEvent value)
        toggleImageSelection,
    required TResult Function(_OnSelectImageEvent value) selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPickImageEvent value)? pickImage,
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnImageDeletedEvent value)? deleteImage,
    TResult? Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult? Function(_OnSelectImageEvent value)? selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPickImageEvent value)? pickImage,
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnImageDeletedEvent value)? deleteImage,
    TResult Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult Function(_OnSelectImageEvent value)? selectImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalGalleryEventCopyWith<$Res> {
  factory $LocalGalleryEventCopyWith(
          LocalGalleryEvent value, $Res Function(LocalGalleryEvent) then) =
      _$LocalGalleryEventCopyWithImpl<$Res, LocalGalleryEvent>;
}

/// @nodoc
class _$LocalGalleryEventCopyWithImpl<$Res, $Val extends LocalGalleryEvent>
    implements $LocalGalleryEventCopyWith<$Res> {
  _$LocalGalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnPickImageEventImplCopyWith<$Res> {
  factory _$$OnPickImageEventImplCopyWith(_$OnPickImageEventImpl value,
          $Res Function(_$OnPickImageEventImpl) then) =
      __$$OnPickImageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnPickImageEventImplCopyWithImpl<$Res>
    extends _$LocalGalleryEventCopyWithImpl<$Res, _$OnPickImageEventImpl>
    implements _$$OnPickImageEventImplCopyWith<$Res> {
  __$$OnPickImageEventImplCopyWithImpl(_$OnPickImageEventImpl _value,
      $Res Function(_$OnPickImageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnPickImageEventImpl implements _OnPickImageEvent {
  _$OnPickImageEventImpl();

  @override
  String toString() {
    return 'LocalGalleryEvent.pickImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnPickImageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function() fetchImages,
    required TResult Function(String id) deleteImage,
    required TResult Function() toggleImageSelection,
    required TResult Function(ImageModel imageModel) selectImage,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function()? fetchImages,
    TResult? Function(String id)? deleteImage,
    TResult? Function()? toggleImageSelection,
    TResult? Function(ImageModel imageModel)? selectImage,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function()? fetchImages,
    TResult Function(String id)? deleteImage,
    TResult Function()? toggleImageSelection,
    TResult Function(ImageModel imageModel)? selectImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPickImageEvent value) pickImage,
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnImageDeletedEvent value) deleteImage,
    required TResult Function(_OnToggleImageSelectionEvent value)
        toggleImageSelection,
    required TResult Function(_OnSelectImageEvent value) selectImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPickImageEvent value)? pickImage,
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnImageDeletedEvent value)? deleteImage,
    TResult? Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult? Function(_OnSelectImageEvent value)? selectImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPickImageEvent value)? pickImage,
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnImageDeletedEvent value)? deleteImage,
    TResult Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult Function(_OnSelectImageEvent value)? selectImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _OnPickImageEvent implements LocalGalleryEvent {
  factory _OnPickImageEvent() = _$OnPickImageEventImpl;
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
    extends _$LocalGalleryEventCopyWithImpl<$Res, _$OnFetchingImagesEventImpl>
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
    return 'LocalGalleryEvent.fetchImages()';
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
    required TResult Function() pickImage,
    required TResult Function() fetchImages,
    required TResult Function(String id) deleteImage,
    required TResult Function() toggleImageSelection,
    required TResult Function(ImageModel imageModel) selectImage,
  }) {
    return fetchImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function()? fetchImages,
    TResult? Function(String id)? deleteImage,
    TResult? Function()? toggleImageSelection,
    TResult? Function(ImageModel imageModel)? selectImage,
  }) {
    return fetchImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function()? fetchImages,
    TResult Function(String id)? deleteImage,
    TResult Function()? toggleImageSelection,
    TResult Function(ImageModel imageModel)? selectImage,
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
    required TResult Function(_OnPickImageEvent value) pickImage,
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnImageDeletedEvent value) deleteImage,
    required TResult Function(_OnToggleImageSelectionEvent value)
        toggleImageSelection,
    required TResult Function(_OnSelectImageEvent value) selectImage,
  }) {
    return fetchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPickImageEvent value)? pickImage,
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnImageDeletedEvent value)? deleteImage,
    TResult? Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult? Function(_OnSelectImageEvent value)? selectImage,
  }) {
    return fetchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPickImageEvent value)? pickImage,
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnImageDeletedEvent value)? deleteImage,
    TResult Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult Function(_OnSelectImageEvent value)? selectImage,
    required TResult orElse(),
  }) {
    if (fetchImages != null) {
      return fetchImages(this);
    }
    return orElse();
  }
}

abstract class _OnFetchingImagesEvent implements LocalGalleryEvent {
  factory _OnFetchingImagesEvent() = _$OnFetchingImagesEventImpl;
}

/// @nodoc
abstract class _$$OnImageDeletedEventImplCopyWith<$Res> {
  factory _$$OnImageDeletedEventImplCopyWith(_$OnImageDeletedEventImpl value,
          $Res Function(_$OnImageDeletedEventImpl) then) =
      __$$OnImageDeletedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$OnImageDeletedEventImplCopyWithImpl<$Res>
    extends _$LocalGalleryEventCopyWithImpl<$Res, _$OnImageDeletedEventImpl>
    implements _$$OnImageDeletedEventImplCopyWith<$Res> {
  __$$OnImageDeletedEventImplCopyWithImpl(_$OnImageDeletedEventImpl _value,
      $Res Function(_$OnImageDeletedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$OnImageDeletedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnImageDeletedEventImpl implements _OnImageDeletedEvent {
  _$OnImageDeletedEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LocalGalleryEvent.deleteImage(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnImageDeletedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnImageDeletedEventImplCopyWith<_$OnImageDeletedEventImpl> get copyWith =>
      __$$OnImageDeletedEventImplCopyWithImpl<_$OnImageDeletedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function() fetchImages,
    required TResult Function(String id) deleteImage,
    required TResult Function() toggleImageSelection,
    required TResult Function(ImageModel imageModel) selectImage,
  }) {
    return deleteImage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function()? fetchImages,
    TResult? Function(String id)? deleteImage,
    TResult? Function()? toggleImageSelection,
    TResult? Function(ImageModel imageModel)? selectImage,
  }) {
    return deleteImage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function()? fetchImages,
    TResult Function(String id)? deleteImage,
    TResult Function()? toggleImageSelection,
    TResult Function(ImageModel imageModel)? selectImage,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPickImageEvent value) pickImage,
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnImageDeletedEvent value) deleteImage,
    required TResult Function(_OnToggleImageSelectionEvent value)
        toggleImageSelection,
    required TResult Function(_OnSelectImageEvent value) selectImage,
  }) {
    return deleteImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPickImageEvent value)? pickImage,
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnImageDeletedEvent value)? deleteImage,
    TResult? Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult? Function(_OnSelectImageEvent value)? selectImage,
  }) {
    return deleteImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPickImageEvent value)? pickImage,
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnImageDeletedEvent value)? deleteImage,
    TResult Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult Function(_OnSelectImageEvent value)? selectImage,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(this);
    }
    return orElse();
  }
}

abstract class _OnImageDeletedEvent implements LocalGalleryEvent {
  factory _OnImageDeletedEvent({required final String id}) =
      _$OnImageDeletedEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$OnImageDeletedEventImplCopyWith<_$OnImageDeletedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnToggleImageSelectionEventImplCopyWith<$Res> {
  factory _$$OnToggleImageSelectionEventImplCopyWith(
          _$OnToggleImageSelectionEventImpl value,
          $Res Function(_$OnToggleImageSelectionEventImpl) then) =
      __$$OnToggleImageSelectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnToggleImageSelectionEventImplCopyWithImpl<$Res>
    extends _$LocalGalleryEventCopyWithImpl<$Res,
        _$OnToggleImageSelectionEventImpl>
    implements _$$OnToggleImageSelectionEventImplCopyWith<$Res> {
  __$$OnToggleImageSelectionEventImplCopyWithImpl(
      _$OnToggleImageSelectionEventImpl _value,
      $Res Function(_$OnToggleImageSelectionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnToggleImageSelectionEventImpl
    implements _OnToggleImageSelectionEvent {
  _$OnToggleImageSelectionEventImpl();

  @override
  String toString() {
    return 'LocalGalleryEvent.toggleImageSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnToggleImageSelectionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function() fetchImages,
    required TResult Function(String id) deleteImage,
    required TResult Function() toggleImageSelection,
    required TResult Function(ImageModel imageModel) selectImage,
  }) {
    return toggleImageSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function()? fetchImages,
    TResult? Function(String id)? deleteImage,
    TResult? Function()? toggleImageSelection,
    TResult? Function(ImageModel imageModel)? selectImage,
  }) {
    return toggleImageSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function()? fetchImages,
    TResult Function(String id)? deleteImage,
    TResult Function()? toggleImageSelection,
    TResult Function(ImageModel imageModel)? selectImage,
    required TResult orElse(),
  }) {
    if (toggleImageSelection != null) {
      return toggleImageSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPickImageEvent value) pickImage,
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnImageDeletedEvent value) deleteImage,
    required TResult Function(_OnToggleImageSelectionEvent value)
        toggleImageSelection,
    required TResult Function(_OnSelectImageEvent value) selectImage,
  }) {
    return toggleImageSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPickImageEvent value)? pickImage,
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnImageDeletedEvent value)? deleteImage,
    TResult? Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult? Function(_OnSelectImageEvent value)? selectImage,
  }) {
    return toggleImageSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPickImageEvent value)? pickImage,
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnImageDeletedEvent value)? deleteImage,
    TResult Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult Function(_OnSelectImageEvent value)? selectImage,
    required TResult orElse(),
  }) {
    if (toggleImageSelection != null) {
      return toggleImageSelection(this);
    }
    return orElse();
  }
}

abstract class _OnToggleImageSelectionEvent implements LocalGalleryEvent {
  factory _OnToggleImageSelectionEvent() = _$OnToggleImageSelectionEventImpl;
}

/// @nodoc
abstract class _$$OnSelectImageEventImplCopyWith<$Res> {
  factory _$$OnSelectImageEventImplCopyWith(_$OnSelectImageEventImpl value,
          $Res Function(_$OnSelectImageEventImpl) then) =
      __$$OnSelectImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageModel imageModel});
}

/// @nodoc
class __$$OnSelectImageEventImplCopyWithImpl<$Res>
    extends _$LocalGalleryEventCopyWithImpl<$Res, _$OnSelectImageEventImpl>
    implements _$$OnSelectImageEventImplCopyWith<$Res> {
  __$$OnSelectImageEventImplCopyWithImpl(_$OnSelectImageEventImpl _value,
      $Res Function(_$OnSelectImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageModel = null,
  }) {
    return _then(_$OnSelectImageEventImpl(
      imageModel: null == imageModel
          ? _value.imageModel
          : imageModel // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc

class _$OnSelectImageEventImpl implements _OnSelectImageEvent {
  _$OnSelectImageEventImpl({required this.imageModel});

  @override
  final ImageModel imageModel;

  @override
  String toString() {
    return 'LocalGalleryEvent.selectImage(imageModel: $imageModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectImageEventImpl &&
            (identical(other.imageModel, imageModel) ||
                other.imageModel == imageModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectImageEventImplCopyWith<_$OnSelectImageEventImpl> get copyWith =>
      __$$OnSelectImageEventImplCopyWithImpl<_$OnSelectImageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function() fetchImages,
    required TResult Function(String id) deleteImage,
    required TResult Function() toggleImageSelection,
    required TResult Function(ImageModel imageModel) selectImage,
  }) {
    return selectImage(imageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function()? fetchImages,
    TResult? Function(String id)? deleteImage,
    TResult? Function()? toggleImageSelection,
    TResult? Function(ImageModel imageModel)? selectImage,
  }) {
    return selectImage?.call(imageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function()? fetchImages,
    TResult Function(String id)? deleteImage,
    TResult Function()? toggleImageSelection,
    TResult Function(ImageModel imageModel)? selectImage,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage(imageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPickImageEvent value) pickImage,
    required TResult Function(_OnFetchingImagesEvent value) fetchImages,
    required TResult Function(_OnImageDeletedEvent value) deleteImage,
    required TResult Function(_OnToggleImageSelectionEvent value)
        toggleImageSelection,
    required TResult Function(_OnSelectImageEvent value) selectImage,
  }) {
    return selectImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPickImageEvent value)? pickImage,
    TResult? Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult? Function(_OnImageDeletedEvent value)? deleteImage,
    TResult? Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult? Function(_OnSelectImageEvent value)? selectImage,
  }) {
    return selectImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPickImageEvent value)? pickImage,
    TResult Function(_OnFetchingImagesEvent value)? fetchImages,
    TResult Function(_OnImageDeletedEvent value)? deleteImage,
    TResult Function(_OnToggleImageSelectionEvent value)? toggleImageSelection,
    TResult Function(_OnSelectImageEvent value)? selectImage,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage(this);
    }
    return orElse();
  }
}

abstract class _OnSelectImageEvent implements LocalGalleryEvent {
  factory _OnSelectImageEvent({required final ImageModel imageModel}) =
      _$OnSelectImageEventImpl;

  ImageModel get imageModel;
  @JsonKey(ignore: true)
  _$$OnSelectImageEventImplCopyWith<_$OnSelectImageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalGalleryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleteImage => throw _privateConstructorUsedError;
  bool get isSelectionEnabled => throw _privateConstructorUsedError;
  bool get isImageSelected => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  List<ImageModel> get selectedImages => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalGalleryStateCopyWith<LocalGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalGalleryStateCopyWith<$Res> {
  factory $LocalGalleryStateCopyWith(
          LocalGalleryState value, $Res Function(LocalGalleryState) then) =
      _$LocalGalleryStateCopyWithImpl<$Res, LocalGalleryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isDeleteImage,
      bool isSelectionEnabled,
      bool isImageSelected,
      List<ImageModel> images,
      List<ImageModel> selectedImages,
      String? errorMessage});
}

/// @nodoc
class _$LocalGalleryStateCopyWithImpl<$Res, $Val extends LocalGalleryState>
    implements $LocalGalleryStateCopyWith<$Res> {
  _$LocalGalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isDeleteImage = null,
    Object? isSelectionEnabled = null,
    Object? isImageSelected = null,
    Object? images = null,
    Object? selectedImages = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteImage: null == isDeleteImage
          ? _value.isDeleteImage
          : isDeleteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectionEnabled: null == isSelectionEnabled
          ? _value.isSelectionEnabled
          : isSelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageSelected: null == isImageSelected
          ? _value.isImageSelected
          : isImageSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      selectedImages: null == selectedImages
          ? _value.selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalGalleryStateImplCopyWith<$Res>
    implements $LocalGalleryStateCopyWith<$Res> {
  factory _$$LocalGalleryStateImplCopyWith(_$LocalGalleryStateImpl value,
          $Res Function(_$LocalGalleryStateImpl) then) =
      __$$LocalGalleryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isDeleteImage,
      bool isSelectionEnabled,
      bool isImageSelected,
      List<ImageModel> images,
      List<ImageModel> selectedImages,
      String? errorMessage});
}

/// @nodoc
class __$$LocalGalleryStateImplCopyWithImpl<$Res>
    extends _$LocalGalleryStateCopyWithImpl<$Res, _$LocalGalleryStateImpl>
    implements _$$LocalGalleryStateImplCopyWith<$Res> {
  __$$LocalGalleryStateImplCopyWithImpl(_$LocalGalleryStateImpl _value,
      $Res Function(_$LocalGalleryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isDeleteImage = null,
    Object? isSelectionEnabled = null,
    Object? isImageSelected = null,
    Object? images = null,
    Object? selectedImages = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LocalGalleryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteImage: null == isDeleteImage
          ? _value.isDeleteImage
          : isDeleteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectionEnabled: null == isSelectionEnabled
          ? _value.isSelectionEnabled
          : isSelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageSelected: null == isImageSelected
          ? _value.isImageSelected
          : isImageSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      selectedImages: null == selectedImages
          ? _value._selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalGalleryStateImpl implements _LocalGalleryState {
  _$LocalGalleryStateImpl(
      {this.isLoading = false,
      this.isDeleteImage = false,
      this.isSelectionEnabled = false,
      this.isImageSelected = false,
      final List<ImageModel> images = const [],
      final List<ImageModel> selectedImages = const [],
      this.errorMessage})
      : _images = images,
        _selectedImages = selectedImages;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDeleteImage;
  @override
  @JsonKey()
  final bool isSelectionEnabled;
  @override
  @JsonKey()
  final bool isImageSelected;
  final List<ImageModel> _images;
  @override
  @JsonKey()
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<ImageModel> _selectedImages;
  @override
  @JsonKey()
  List<ImageModel> get selectedImages {
    if (_selectedImages is EqualUnmodifiableListView) return _selectedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedImages);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LocalGalleryState(isLoading: $isLoading, isDeleteImage: $isDeleteImage, isSelectionEnabled: $isSelectionEnabled, isImageSelected: $isImageSelected, images: $images, selectedImages: $selectedImages, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalGalleryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDeleteImage, isDeleteImage) ||
                other.isDeleteImage == isDeleteImage) &&
            (identical(other.isSelectionEnabled, isSelectionEnabled) ||
                other.isSelectionEnabled == isSelectionEnabled) &&
            (identical(other.isImageSelected, isImageSelected) ||
                other.isImageSelected == isImageSelected) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._selectedImages, _selectedImages) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isDeleteImage,
      isSelectionEnabled,
      isImageSelected,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_selectedImages),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalGalleryStateImplCopyWith<_$LocalGalleryStateImpl> get copyWith =>
      __$$LocalGalleryStateImplCopyWithImpl<_$LocalGalleryStateImpl>(
          this, _$identity);
}

abstract class _LocalGalleryState implements LocalGalleryState {
  factory _LocalGalleryState(
      {final bool isLoading,
      final bool isDeleteImage,
      final bool isSelectionEnabled,
      final bool isImageSelected,
      final List<ImageModel> images,
      final List<ImageModel> selectedImages,
      final String? errorMessage}) = _$LocalGalleryStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isDeleteImage;
  @override
  bool get isSelectionEnabled;
  @override
  bool get isImageSelected;
  @override
  List<ImageModel> get images;
  @override
  List<ImageModel> get selectedImages;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LocalGalleryStateImplCopyWith<_$LocalGalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
