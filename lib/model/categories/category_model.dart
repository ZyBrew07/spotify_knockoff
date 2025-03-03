import 'package:flutter_application_1/model/common/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
    factory CategoryModel({
        required String name,
        required List<ImageModel> icons,
        required String id
    }) = _CategoryModel;

    factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}