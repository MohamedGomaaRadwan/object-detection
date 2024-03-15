import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';
import 'package:object_detection/features/home/domain/repository/loacl_gallery_repository.dart';
import 'package:uuid/uuid.dart';

import 'save_image_usecase.dart';

@Injectable()
class PickImageUsecase {
  PickImageUsecase(this._saveImageUsecase, this._galleryRepository);

  final SaveImageUsecase _saveImageUsecase;
  final LocalGalleryRepository _galleryRepository;

  Future<void> execute() async {
    try {
      String? image = await _galleryRepository.pickImage();
      if (image != null) {
        _saveImageUsecase.execute(imageModel: ImageModel(imageId: const Uuid().v4(), imagePath: image, isSynced: false));
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
