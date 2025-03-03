import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'image_model.g.dart';
part 'image_model.freezed.dart';

@HiveType(typeId: 2)
@freezed
class ImageModel with _$ImageModel {
  factory ImageModel({
    @HiveField(0)
    @Default("") String url,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
