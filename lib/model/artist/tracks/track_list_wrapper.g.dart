// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_list_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackListWrapperImpl _$$TrackListWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackListWrapperImpl(
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => TrackModelWrapper.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrackListWrapperImplToJson(
        _$TrackListWrapperImpl instance) =>
    <String, dynamic>{
      'tracks': instance.tracks,
    };
