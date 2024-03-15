import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';
import 'package:object_detection/features/home/domain/repository/image_repository.dart';

@Injectable()
class UploadImagesUsecase {
  final ImageRepository _imageRepository;

  UploadImagesUsecase(this._imageRepository);

  Future<void> execute(List<ImageModel> imageList) async {
    try {
      await _imageRepository.uploadImageList(imageList);
    } catch (e) {
      throw Exception(e);
    }
  }
}
