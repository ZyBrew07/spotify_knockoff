// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumModelListImpl _$$AlbumModelListImplFromJson(Map<String, dynamic> json) =>
    _$AlbumModelListImpl(
      albums: (json['albums'] as List<dynamic>)
          .map((e) => AlbumModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumModelListImplToJson(
        _$AlbumModelListImpl instance) =>
    <String, dynamic>{
      'albums': instance.albums,
    };
