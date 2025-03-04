import 'package:flutter_application_1/src/domain/model/categories/category_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_list_wrapper.freezed.dart';
part 'category_list_wrapper.g.dart';

@freezed
class CategoryListWrapper with _$CategoryListWrapper {
    factory CategoryListWrapper ({
        required CategoryListModel categories, 
    }) = _CategoryListWrapper;

    factory CategoryListWrapper.fromJson(Map<String, dynamic> json) =>
      _$CategoryListWrapperFromJson(json);
}