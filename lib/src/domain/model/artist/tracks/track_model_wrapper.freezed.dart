// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_model_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackModelWrapper _$TrackModelWrapperFromJson(Map<String, dynamic> json) {
  return _TrackModelWrapper.fromJson(json);
}

/// @nodoc
mixin _$TrackModelWrapper {
  TrackAlbumModel get album => throw _privateConstructorUsedError;

  /// Serializes this TrackModelWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackModelWrapperCopyWith<TrackModelWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackModelWrapperCopyWith<$Res> {
  factory $TrackModelWrapperCopyWith(
          TrackModelWrapper value, $Res Function(TrackModelWrapper) then) =
      _$TrackModelWrapperCopyWithImpl<$Res, TrackModelWrapper>;
  @useResult
  $Res call({TrackAlbumModel album});

  $TrackAlbumModelCopyWith<$Res> get album;
}

/// @nodoc
class _$TrackModelWrapperCopyWithImpl<$Res, $Val extends TrackModelWrapper>
    implements $TrackModelWrapperCopyWith<$Res> {
  _$TrackModelWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as TrackAlbumModel,
    ) as $Val);
  }

  /// Create a copy of TrackModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackAlbumModelCopyWith<$Res> get album {
    return $TrackAlbumModelCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackModelWrapperImplCopyWith<$Res>
    implements $TrackModelWrapperCopyWith<$Res> {
  factory _$$TrackModelWrapperImplCopyWith(_$TrackModelWrapperImpl value,
          $Res Function(_$TrackModelWrapperImpl) then) =
      __$$TrackModelWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TrackAlbumModel album});

  @override
  $TrackAlbumModelCopyWith<$Res> get album;
}

/// @nodoc
class __$$TrackModelWrapperImplCopyWithImpl<$Res>
    extends _$TrackModelWrapperCopyWithImpl<$Res, _$TrackModelWrapperImpl>
    implements _$$TrackModelWrapperImplCopyWith<$Res> {
  __$$TrackModelWrapperImplCopyWithImpl(_$TrackModelWrapperImpl _value,
      $Res Function(_$TrackModelWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
  }) {
    return _then(_$TrackModelWrapperImpl(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as TrackAlbumModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackModelWrapperImpl implements _TrackModelWrapper {
  _$TrackModelWrapperImpl({required this.album});

  factory _$TrackModelWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackModelWrapperImplFromJson(json);

  @override
  final TrackAlbumModel album;

  @override
  String toString() {
    return 'TrackModelWrapper(album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackModelWrapperImpl &&
            (identical(other.album, album) || other.album == album));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, album);

  /// Create a copy of TrackModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackModelWrapperImplCopyWith<_$TrackModelWrapperImpl> get copyWith =>
      __$$TrackModelWrapperImplCopyWithImpl<_$TrackModelWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackModelWrapperImplToJson(
      this,
    );
  }
}

abstract class _TrackModelWrapper implements TrackModelWrapper {
  factory _TrackModelWrapper({required final TrackAlbumModel album}) =
      _$TrackModelWrapperImpl;

  factory _TrackModelWrapper.fromJson(Map<String, dynamic> json) =
      _$TrackModelWrapperImpl.fromJson;

  @override
  TrackAlbumModel get album;

  /// Create a copy of TrackModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackModelWrapperImplCopyWith<_$TrackModelWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
