// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryListWrapper _$CategoryListWrapperFromJson(Map<String, dynamic> json) {
  return _CategoryListWrapper.fromJson(json);
}

/// @nodoc
mixin _$CategoryListWrapper {
  CategoryListModel get categories => throw _privateConstructorUsedError;

  /// Serializes this CategoryListWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryListWrapperCopyWith<CategoryListWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListWrapperCopyWith<$Res> {
  factory $CategoryListWrapperCopyWith(
          CategoryListWrapper value, $Res Function(CategoryListWrapper) then) =
      _$CategoryListWrapperCopyWithImpl<$Res, CategoryListWrapper>;
  @useResult
  $Res call({CategoryListModel categories});

  $CategoryListModelCopyWith<$Res> get categories;
}

/// @nodoc
class _$CategoryListWrapperCopyWithImpl<$Res, $Val extends CategoryListWrapper>
    implements $CategoryListWrapperCopyWith<$Res> {
  _$CategoryListWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryListModel,
    ) as $Val);
  }

  /// Create a copy of CategoryListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryListModelCopyWith<$Res> get categories {
    return $CategoryListModelCopyWith<$Res>(_value.categories, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryListWrapperImplCopyWith<$Res>
    implements $CategoryListWrapperCopyWith<$Res> {
  factory _$$CategoryListWrapperImplCopyWith(_$CategoryListWrapperImpl value,
          $Res Function(_$CategoryListWrapperImpl) then) =
      __$$CategoryListWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryListModel categories});

  @override
  $CategoryListModelCopyWith<$Res> get categories;
}

/// @nodoc
class __$$CategoryListWrapperImplCopyWithImpl<$Res>
    extends _$CategoryListWrapperCopyWithImpl<$Res, _$CategoryListWrapperImpl>
    implements _$$CategoryListWrapperImplCopyWith<$Res> {
  __$$CategoryListWrapperImplCopyWithImpl(_$CategoryListWrapperImpl _value,
      $Res Function(_$CategoryListWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoryListWrapperImpl(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryListModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListWrapperImpl implements _CategoryListWrapper {
  _$CategoryListWrapperImpl({required this.categories});

  factory _$CategoryListWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListWrapperImplFromJson(json);

  @override
  final CategoryListModel categories;

  @override
  String toString() {
    return 'CategoryListWrapper(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListWrapperImpl &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categories);

  /// Create a copy of CategoryListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListWrapperImplCopyWith<_$CategoryListWrapperImpl> get copyWith =>
      __$$CategoryListWrapperImplCopyWithImpl<_$CategoryListWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListWrapperImplToJson(
      this,
    );
  }
}

abstract class _CategoryListWrapper implements CategoryListWrapper {
  factory _CategoryListWrapper({required final CategoryListModel categories}) =
      _$CategoryListWrapperImpl;

  factory _CategoryListWrapper.fromJson(Map<String, dynamic> json) =
      _$CategoryListWrapperImpl.fromJson;

  @override
  CategoryListModel get categories;

  /// Create a copy of CategoryListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryListWrapperImplCopyWith<_$CategoryListWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
