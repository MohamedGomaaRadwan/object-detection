import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';
import 'package:object_detection/features/home/domain/repository/image_repository.dart';

@Injectable()
class GetImagesUsecase {
  final ImageRepository _imageRepository;

  GetImagesUsecase(this._imageRepository);

  Stream<List<ImageModel>> execute()  {
    try {
      return _imageRepository.getImageStream();
    } catch (e) {
      throw Exception(e);
    }
  }
}
