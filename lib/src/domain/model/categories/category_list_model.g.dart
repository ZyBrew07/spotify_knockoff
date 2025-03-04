// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListModelImpl _$$CategoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryListModelImplToJson(
        _$CategoryListModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
