import 'package:flutter_application_1/src/domain/model/artist/tracks/track_album_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_model_wrapper.g.dart';
part 'track_model_wrapper.freezed.dart';

@freezed
class TrackModelWrapper with _$TrackModelWrapper {
  factory TrackModelWrapper(
      {required TrackAlbumModel album}) = _TrackModelWrapper;

  factory TrackModelWrapper.fromJson(Map<String, dynamic> json) =>
      _$TrackModelWrapperFromJson(json);
}
