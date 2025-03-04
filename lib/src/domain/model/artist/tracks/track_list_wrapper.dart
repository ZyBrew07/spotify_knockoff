import 'package:flutter_application_1/src/domain/model/artist/tracks/track_model_wrapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_list_wrapper.freezed.dart';
part 'track_list_wrapper.g.dart';

// Object -> List
@freezed
class TrackListWrapper with _$TrackListWrapper {
    factory TrackListWrapper ({
        required List<TrackModelWrapper>? tracks, 
    }) = _TrackListWrapper;

    factory TrackListWrapper.fromJson(Map<String, dynamic> json) =>
      _$TrackListWrapperFromJson(json);
}