import 'package:flutter_application_1/src/domain/model/common/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_model.g.dart';
part 'album_model.freezed.dart';


@freezed
class AlbumModel with _$AlbumModel {
  factory AlbumModel({
    required String id,
    required String name,
    required List<ImageModel> images,
  }) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);
}
