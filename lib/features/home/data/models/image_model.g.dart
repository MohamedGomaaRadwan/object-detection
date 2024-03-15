// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImageModelAdapter extends TypeAdapter<ImageModel> {
  @override
  final int typeId = 0;

  @override
  ImageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImageModel(
      imageId: fields[0] as String?,
      imagePath: fields[1] as String?,
      isSynced: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, ImageModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.imageId)
      ..writeByte(1)
      ..write(obj.imagePath)
      ..writeByte(2)
      ..write(obj.isSynced);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      imageId: json['imageId'] as String?,
      imagePath: json['imagePath'] as String?,
      isSynced: json['isSynced'] as bool?,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'imagePath': instance.imagePath,
      'isSynced': instance.isSynced,
    };
