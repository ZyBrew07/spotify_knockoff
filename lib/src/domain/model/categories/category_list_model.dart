import 'package:flutter_application_1/src/domain/model/categories/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_list_model.freezed.dart';
part 'category_list_model.g.dart';

@freezed
class CategoryListModel with _$CategoryListModel {
    factory CategoryListModel ({
        required List<CategoryModel> items,
    }) = _CategoryListModel;

    factory CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryListModelFromJson(json);
}