import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/src/domain/model/artist/artist_model.dart';

part 'artist_model_list.freezed.dart';
part 'artist_model_list.g.dart';

@freezed
class ArtistModelList with _$ArtistModelList {
  factory ArtistModelList({
    required List<ArtistModel> artists,
  }) = _ArtistModelList;

  factory ArtistModelList.fromJson(Map<String, dynamic> json) =>
      _$ArtistModelListFromJson(json);
}