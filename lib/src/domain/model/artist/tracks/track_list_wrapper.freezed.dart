// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_list_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackListWrapper _$TrackListWrapperFromJson(Map<String, dynamic> json) {
  return _TrackListWrapper.fromJson(json);
}

/// @nodoc
mixin _$TrackListWrapper {
  List<TrackModelWrapper>? get tracks => throw _privateConstructorUsedError;

  /// Serializes this TrackListWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackListWrapperCopyWith<TrackListWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackListWrapperCopyWith<$Res> {
  factory $TrackListWrapperCopyWith(
          TrackListWrapper value, $Res Function(TrackListWrapper) then) =
      _$TrackListWrapperCopyWithImpl<$Res, TrackListWrapper>;
  @useResult
  $Res call({List<TrackModelWrapper>? tracks});
}

/// @nodoc
class _$TrackListWrapperCopyWithImpl<$Res, $Val extends TrackListWrapper>
    implements $TrackListWrapperCopyWith<$Res> {
  _$TrackListWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackModelWrapper>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackListWrapperImplCopyWith<$Res>
    implements $TrackListWrapperCopyWith<$Res> {
  factory _$$TrackListWrapperImplCopyWith(_$TrackListWrapperImpl value,
          $Res Function(_$TrackListWrapperImpl) then) =
      __$$TrackListWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrackModelWrapper>? tracks});
}

/// @nodoc
class __$$TrackListWrapperImplCopyWithImpl<$Res>
    extends _$TrackListWrapperCopyWithImpl<$Res, _$TrackListWrapperImpl>
    implements _$$TrackListWrapperImplCopyWith<$Res> {
  __$$TrackListWrapperImplCopyWithImpl(_$TrackListWrapperImpl _value,
      $Res Function(_$TrackListWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = freezed,
  }) {
    return _then(_$TrackListWrapperImpl(
      tracks: freezed == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackModelWrapper>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackListWrapperImpl implements _TrackListWrapper {
  _$TrackListWrapperImpl({required final List<TrackModelWrapper>? tracks})
      : _tracks = tracks;

  factory _$TrackListWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackListWrapperImplFromJson(json);

  final List<TrackModelWrapper>? _tracks;
  @override
  List<TrackModelWrapper>? get tracks {
    final value = _tracks;
    if (value == null) return null;
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackListWrapper(tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackListWrapperImpl &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tracks));

  /// Create a copy of TrackListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackListWrapperImplCopyWith<_$TrackListWrapperImpl> get copyWith =>
      __$$TrackListWrapperImplCopyWithImpl<_$TrackListWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackListWrapperImplToJson(
      this,
    );
  }
}

abstract class _TrackListWrapper implements TrackListWrapper {
  factory _TrackListWrapper({required final List<TrackModelWrapper>? tracks}) =
      _$TrackListWrapperImpl;

  factory _TrackListWrapper.fromJson(Map<String, dynamic> json) =
      _$TrackListWrapperImpl.fromJson;

  @override
  List<TrackModelWrapper>? get tracks;

  /// Create a copy of TrackListWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackListWrapperImplCopyWith<_$TrackListWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
