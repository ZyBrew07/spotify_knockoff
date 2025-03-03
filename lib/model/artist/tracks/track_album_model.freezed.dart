// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_album_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackAlbumModel _$TrackAlbumModelFromJson(Map<String, dynamic> json) {
  return _TrackAlbumModel.fromJson(json);
}

/// @nodoc
mixin _$TrackAlbumModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  bool? get isFavorite => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get defaultImage => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;

  /// Serializes this TrackAlbumModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackAlbumModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackAlbumModelCopyWith<TrackAlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackAlbumModelCopyWith<$Res> {
  factory $TrackAlbumModelCopyWith(
          TrackAlbumModel value, $Res Function(TrackAlbumModel) then) =
      _$TrackAlbumModelCopyWithImpl<$Res, TrackAlbumModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) bool? isFavorite,
      @HiveField(3) String? defaultImage,
      List<ImageModel> images});
}

/// @nodoc
class _$TrackAlbumModelCopyWithImpl<$Res, $Val extends TrackAlbumModel>
    implements $TrackAlbumModelCopyWith<$Res> {
  _$TrackAlbumModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackAlbumModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isFavorite = freezed,
    Object? defaultImage = freezed,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackAlbumModelImplCopyWith<$Res>
    implements $TrackAlbumModelCopyWith<$Res> {
  factory _$$TrackAlbumModelImplCopyWith(_$TrackAlbumModelImpl value,
          $Res Function(_$TrackAlbumModelImpl) then) =
      __$$TrackAlbumModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) bool? isFavorite,
      @HiveField(3) String? defaultImage,
      List<ImageModel> images});
}

/// @nodoc
class __$$TrackAlbumModelImplCopyWithImpl<$Res>
    extends _$TrackAlbumModelCopyWithImpl<$Res, _$TrackAlbumModelImpl>
    implements _$$TrackAlbumModelImplCopyWith<$Res> {
  __$$TrackAlbumModelImplCopyWithImpl(
      _$TrackAlbumModelImpl _value, $Res Function(_$TrackAlbumModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackAlbumModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isFavorite = freezed,
    Object? defaultImage = freezed,
    Object? images = null,
  }) {
    return _then(_$TrackAlbumModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackAlbumModelImpl implements _TrackAlbumModel {
  _$TrackAlbumModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) this.isFavorite = false,
      @HiveField(3) this.defaultImage = null,
      final List<ImageModel> images = const <ImageModel>[]})
      : _images = images;

  factory _$TrackAlbumModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackAlbumModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final bool? isFavorite;
  @override
  @JsonKey()
  @HiveField(3)
  final String? defaultImage;
  final List<ImageModel> _images;
  @override
  @JsonKey()
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'TrackAlbumModel(id: $id, name: $name, isFavorite: $isFavorite, defaultImage: $defaultImage, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackAlbumModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.defaultImage, defaultImage) ||
                other.defaultImage == defaultImage) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isFavorite,
      defaultImage, const DeepCollectionEquality().hash(_images));

  /// Create a copy of TrackAlbumModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackAlbumModelImplCopyWith<_$TrackAlbumModelImpl> get copyWith =>
      __$$TrackAlbumModelImplCopyWithImpl<_$TrackAlbumModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackAlbumModelImplToJson(
      this,
    );
  }
}

abstract class _TrackAlbumModel implements TrackAlbumModel {
  factory _TrackAlbumModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) final bool? isFavorite,
      @HiveField(3) final String? defaultImage,
      final List<ImageModel> images}) = _$TrackAlbumModelImpl;

  factory _TrackAlbumModel.fromJson(Map<String, dynamic> json) =
      _$TrackAlbumModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  bool? get isFavorite;
  @override
  @HiveField(3)
  String? get defaultImage;
  @override
  List<ImageModel> get images;

  /// Create a copy of TrackAlbumModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackAlbumModelImplCopyWith<_$TrackAlbumModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
