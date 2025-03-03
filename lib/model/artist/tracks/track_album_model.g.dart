// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_album_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrackAlbumModelAdapter extends TypeAdapter<TrackAlbumModel> {
  @override
  final int typeId = 1;

  @override
  TrackAlbumModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrackAlbumModel(
      id: fields[0] as String,
      name: fields[1] as String,
      isFavorite: fields[2] as bool?,
      defaultImage: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TrackAlbumModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isFavorite)
      ..writeByte(3)
      ..write(obj.defaultImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrackAlbumModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackAlbumModelImpl _$$TrackAlbumModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackAlbumModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      isFavorite: json['isFavorite'] as bool? ?? false,
      defaultImage: json['defaultImage'] as String? ?? null,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageModel>[],
    );

Map<String, dynamic> _$$TrackAlbumModelImplToJson(
        _$TrackAlbumModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isFavorite': instance.isFavorite,
      'defaultImage': instance.defaultImage,
      'images': instance.images,
    };
