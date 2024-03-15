// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/detection/screens/object_detection_screen/view_model/object_detection_bloc.dart'
    as _i11;
import '../../features/fcm/presentation/bloc/fcm_bloc.dart' as _i3;
import '../../features/home/data/repository/image_repository_impl.dart' as _i6;
import '../../features/home/data/repository/loacl_gallery_repository_impl.dart'
    as _i8;
import '../../features/home/domain/repository/image_repository.dart' as _i5;
import '../../features/home/domain/repository/loacl_gallery_repository.dart'
    as _i7;
import '../../features/home/domain/usecase/delete_local_image_usecase.dart'
    as _i14;
import '../../features/home/domain/usecase/fetch_local_images_usecase.dart'
    as _i15;
import '../../features/home/domain/usecase/get_images_usecase.dart' as _i16;
import '../../features/home/domain/usecase/pick_image_usecase.dart' as _i17;
import '../../features/home/domain/usecase/save_image_usecase.dart' as _i12;
import '../../features/home/domain/usecase/upload_images_usecase.dart' as _i13;
import '../../features/home/presentation/screens/views/local_gallery/view_model/local_gallery_bloc.dart'
    as _i19;
import '../../features/home/presentation/screens/views/synced_gallary/view_model/synced_gallery_bloc.dart'
    as _i18;
import '../../ui/helper/navigation_service.dart' as _i9;
import 'register_module.dart' as _i20;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.FCMBloc>(() => _i3.FCMBloc());
  gh.lazySingleton<_i4.GlobalKey<_i4.NavigatorState>>(
      () => registerModule.navigator);
  gh.factory<_i5.ImageRepository>(() => _i6.ImageRepositoryImpl());
  gh.factory<_i7.LocalGalleryRepository>(
      () => _i8.LocalGalleryRepositoryImpl());
  gh.lazySingleton<_i9.NavigationService>(
      () => _i9.NavigationService(gh<_i10.GlobalKey<_i10.NavigatorState>>()));
  gh.factory<_i11.ObjectDetectionBloc>(() => _i11.ObjectDetectionBloc());
  gh.factory<_i12.SaveImageUsecase>(
      () => _i12.SaveImageUsecase(gh<_i7.LocalGalleryRepository>()));
  gh.factory<_i13.UploadImagesUsecase>(
      () => _i13.UploadImagesUsecase(gh<_i5.ImageRepository>()));
  gh.factory<_i14.DeleteLocalImageUsecase>(
      () => _i14.DeleteLocalImageUsecase(gh<_i7.LocalGalleryRepository>()));
  gh.factory<_i15.FetchLocalImagesUsecase>(
      () => _i15.FetchLocalImagesUsecase(gh<_i7.LocalGalleryRepository>()));
  gh.factory<_i16.GetImagesUsecase>(
      () => _i16.GetImagesUsecase(gh<_i5.ImageRepository>()));
  gh.factory<_i17.PickImageUsecase>(() => _i17.PickImageUsecase(
        gh<_i12.SaveImageUsecase>(),
        gh<_i7.LocalGalleryRepository>(),
      ));
  gh.factory<_i18.SyncedGalleryBloc>(() => _i18.SyncedGalleryBloc(
        gh<_i13.UploadImagesUsecase>(),
        gh<_i16.GetImagesUsecase>(),
      ));
  gh.factory<_i19.LocalGalleryBloc>(() => _i19.LocalGalleryBloc(
        gh<_i17.PickImageUsecase>(),
        gh<_i15.FetchLocalImagesUsecase>(),
        gh<_i14.DeleteLocalImageUsecase>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i20.RegisterModule {}
