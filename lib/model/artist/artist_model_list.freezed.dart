// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_model_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtistModelList _$ArtistModelListFromJson(Map<String, dynamic> json) {
  return _ArtistModelList.fromJson(json);
}

/// @nodoc
mixin _$ArtistModelList {
  List<ArtistModel> get artists => throw _privateConstructorUsedError;

  /// Serializes this ArtistModelList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistModelListCopyWith<ArtistModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistModelListCopyWith<$Res> {
  factory $ArtistModelListCopyWith(
          ArtistModelList value, $Res Function(ArtistModelList) then) =
      _$ArtistModelListCopyWithImpl<$Res, ArtistModelList>;
  @useResult
  $Res call({List<ArtistModel> artists});
}

/// @nodoc
class _$ArtistModelListCopyWithImpl<$Res, $Val extends ArtistModelList>
    implements $ArtistModelListCopyWith<$Res> {
  _$ArtistModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistModelListImplCopyWith<$Res>
    implements $ArtistModelListCopyWith<$Res> {
  factory _$$ArtistModelListImplCopyWith(_$ArtistModelListImpl value,
          $Res Function(_$ArtistModelListImpl) then) =
      __$$ArtistModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ArtistModel> artists});
}

/// @nodoc
class __$$ArtistModelListImplCopyWithImpl<$Res>
    extends _$ArtistModelListCopyWithImpl<$Res, _$ArtistModelListImpl>
    implements _$$ArtistModelListImplCopyWith<$Res> {
  __$$ArtistModelListImplCopyWithImpl(
      _$ArtistModelListImpl _value, $Res Function(_$ArtistModelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$ArtistModelListImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistModelListImpl implements _ArtistModelList {
  _$ArtistModelListImpl({required final List<ArtistModel> artists})
      : _artists = artists;

  factory _$ArtistModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistModelListImplFromJson(json);

  final List<ArtistModel> _artists;
  @override
  List<ArtistModel> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistModelList(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistModelListImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  /// Create a copy of ArtistModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistModelListImplCopyWith<_$ArtistModelListImpl> get copyWith =>
      __$$ArtistModelListImplCopyWithImpl<_$ArtistModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistModelListImplToJson(
      this,
    );
  }
}

abstract class _ArtistModelList implements ArtistModelList {
  factory _ArtistModelList({required final List<ArtistModel> artists}) =
      _$ArtistModelListImpl;

  factory _ArtistModelList.fromJson(Map<String, dynamic> json) =
      _$ArtistModelListImpl.fromJson;

  @override
  List<ArtistModel> get artists;

  /// Create a copy of ArtistModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistModelListImplCopyWith<_$ArtistModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
