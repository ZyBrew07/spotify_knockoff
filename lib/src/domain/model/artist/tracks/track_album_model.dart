import 'package:flutter_application_1/src/domain/model/common/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'track_album_model.g.dart';
part 'track_album_model.freezed.dart';

@HiveType(typeId: 1)
@freezed
class TrackAlbumModel with _$TrackAlbumModel {
  factory TrackAlbumModel(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @HiveField(2) @Default(false) bool? isFavorite,
      @HiveField(3) @Default(null)  String? defaultImage,
      @Default(<ImageModel>[]) List<ImageModel> images}) = _TrackAlbumModel;

  factory TrackAlbumModel.fromJson(Map<String, dynamic> json) =>
      _$TrackAlbumModelFromJson(json);
}
