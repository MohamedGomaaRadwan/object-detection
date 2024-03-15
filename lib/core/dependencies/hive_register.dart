import 'dart:io';
import 'package:hive/hive.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';
import 'package:path_provider/path_provider.dart';


class HiveRegister {
  static Future<void> registerModels() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    Hive.init(appDocPath);

    Hive.registerAdapter(ImageModelAdapter());
    await Hive.openBox(ImageModel.boxKey);

  }
}