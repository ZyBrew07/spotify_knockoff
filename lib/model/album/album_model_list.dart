import 'package:flutter_application_1/model/album/album_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_model_list.freezed.dart';
part 'album_model_list.g.dart';

@freezed
class AlbumModelList with _$AlbumModelList {
  factory AlbumModelList({
    required List<AlbumModel> albums,
  }) = _AlbumModelList;

  factory AlbumModelList.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelListFromJson(json);
}