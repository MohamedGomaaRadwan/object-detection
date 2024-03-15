import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class ImageModel extends HiveObject {
  static const String boxKey = 'ImageBoxKey';

  ImageModel({this.imageId, this.imagePath, this.isSynced});

  @HiveField(0)
  String? imageId;
  @HiveField(1)
  String? imagePath;
  @HiveField(2)
  bool? isSynced;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
