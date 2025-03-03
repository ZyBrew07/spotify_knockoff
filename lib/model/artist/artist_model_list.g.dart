// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistModelListImpl _$$ArtistModelListImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistModelListImpl(
      artists: (json['artists'] as List<dynamic>)
          .map((e) => ArtistModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistModelListImplToJson(
        _$ArtistModelListImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists,
    };
