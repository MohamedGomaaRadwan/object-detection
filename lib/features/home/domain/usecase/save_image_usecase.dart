import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';
import '../repository/loacl_gallery_repository.dart';

@Injectable()
class SaveImageUsecase {
  final LocalGalleryRepository _galleryRepository;

  SaveImageUsecase(this._galleryRepository);

  Future<void> execute({required ImageModel imageModel}) async {
    try {
      await _galleryRepository.saveImage(imageModel);
    } catch (e) {
      throw Exception(e);
    }
  }
}
