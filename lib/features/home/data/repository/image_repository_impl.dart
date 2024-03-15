import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';

import '../../domain/repository/image_repository.dart';

@Injectable(as: ImageRepository)
class ImageRepositoryImpl extends ImageRepository {
  final DatabaseReference _database = FirebaseDatabase.instance.ref();
  final String image = "images";

  @override
  Future<void> uploadImage(ImageModel imageModel) async {
    await _database.child(image).child(imageModel.imageId!).set(imageModel.toJson());
  }

  @override
  Future<void> uploadImageList(List<ImageModel> list) async {
    for (var imageModel in list) {
      imageModel.isSynced = true;
      await uploadImage(imageModel);
    }
  }

  @override
  Stream<List<ImageModel>> getImageStream() {
    return _database.child(image).onValue.map((event) {
      List<ImageModel> items = [];
      if (event.snapshot.value != null) {
        final data = event.snapshot.children;
        data.forEach((value) {
          final valueData = value.value as Map<dynamic, dynamic>;
          ImageModel item = ImageModel.fromJson(valueData.map((key, value) => MapEntry<String, dynamic>(key as String, value)));
          items.add(item);
        });
      }
      return items;
    });
  }
}
