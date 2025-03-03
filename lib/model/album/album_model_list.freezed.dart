// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_model_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlbumModelList _$AlbumModelListFromJson(Map<String, dynamic> json) {
  return _AlbumModelList.fromJson(json);
}

/// @nodoc
mixin _$AlbumModelList {
  List<AlbumModel> get albums => throw _privateConstructorUsedError;

  /// Serializes this AlbumModelList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumModelListCopyWith<AlbumModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumModelListCopyWith<$Res> {
  factory $AlbumModelListCopyWith(
          AlbumModelList value, $Res Function(AlbumModelList) then) =
      _$AlbumModelListCopyWithImpl<$Res, AlbumModelList>;
  @useResult
  $Res call({List<AlbumModel> albums});
}

/// @nodoc
class _$AlbumModelListCopyWithImpl<$Res, $Val extends AlbumModelList>
    implements $AlbumModelListCopyWith<$Res> {
  _$AlbumModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
  }) {
    return _then(_value.copyWith(
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumModelListImplCopyWith<$Res>
    implements $AlbumModelListCopyWith<$Res> {
  factory _$$AlbumModelListImplCopyWith(_$AlbumModelListImpl value,
          $Res Function(_$AlbumModelListImpl) then) =
      __$$AlbumModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AlbumModel> albums});
}

/// @nodoc
class __$$AlbumModelListImplCopyWithImpl<$Res>
    extends _$AlbumModelListCopyWithImpl<$Res, _$AlbumModelListImpl>
    implements _$$AlbumModelListImplCopyWith<$Res> {
  __$$AlbumModelListImplCopyWithImpl(
      _$AlbumModelListImpl _value, $Res Function(_$AlbumModelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
  }) {
    return _then(_$AlbumModelListImpl(
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumModelListImpl implements _AlbumModelList {
  _$AlbumModelListImpl({required final List<AlbumModel> albums})
      : _albums = albums;

  factory _$AlbumModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumModelListImplFromJson(json);

  final List<AlbumModel> _albums;
  @override
  List<AlbumModel> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString() {
    return 'AlbumModelList(albums: $albums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumModelListImpl &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_albums));

  /// Create a copy of AlbumModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumModelListImplCopyWith<_$AlbumModelListImpl> get copyWith =>
      __$$AlbumModelListImplCopyWithImpl<_$AlbumModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumModelListImplToJson(
      this,
    );
  }
}

abstract class _AlbumModelList implements AlbumModelList {
  factory _AlbumModelList({required final List<AlbumModel> albums}) =
      _$AlbumModelListImpl;

  factory _AlbumModelList.fromJson(Map<String, dynamic> json) =
      _$AlbumModelListImpl.fromJson;

  @override
  List<AlbumModel> get albums;

  /// Create a copy of AlbumModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumModelListImplCopyWith<_$AlbumModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
