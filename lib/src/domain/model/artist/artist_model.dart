import 'package:flutter_application_1/src/domain/model/common/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_model.g.dart';
part 'artist_model.freezed.dart';


@freezed
class ArtistModel with _$ArtistModel {
  factory ArtistModel({
    required String id,
    required String name,
    required List<ImageModel> images,
    required List<String> genres
  }) = _ArtistModel;

  factory ArtistModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistModelFromJson(json);
}
