// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistState {
  TrackListWrapper? get trackListWrapper => throw _privateConstructorUsedError;
  ArtistModel? get artist => throw _privateConstructorUsedError;

  /// Create a copy of ArtistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistStateCopyWith<ArtistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStateCopyWith<$Res> {
  factory $ArtistStateCopyWith(
          ArtistState value, $Res Function(ArtistState) then) =
      _$ArtistStateCopyWithImpl<$Res, ArtistState>;
  @useResult
  $Res call({TrackListWrapper? trackListWrapper, ArtistModel? artist});

  $TrackListWrapperCopyWith<$Res>? get trackListWrapper;
  $ArtistModelCopyWith<$Res>? get artist;
}

/// @nodoc
class _$ArtistStateCopyWithImpl<$Res, $Val extends ArtistState>
    implements $ArtistStateCopyWith<$Res> {
  _$ArtistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackListWrapper = freezed,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      trackListWrapper: freezed == trackListWrapper
          ? _value.trackListWrapper
          : trackListWrapper // ignore: cast_nullable_to_non_nullable
              as TrackListWrapper?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistModel?,
    ) as $Val);
  }

  /// Create a copy of ArtistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackListWrapperCopyWith<$Res>? get trackListWrapper {
    if (_value.trackListWrapper == null) {
      return null;
    }

    return $TrackListWrapperCopyWith<$Res>(_value.trackListWrapper!, (value) {
      return _then(_value.copyWith(trackListWrapper: value) as $Val);
    });
  }

  /// Create a copy of ArtistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistModelCopyWith<$Res>? get artist {
    if (_value.artist == null) {
      return null;
    }

    return $ArtistModelCopyWith<$Res>(_value.artist!, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistStateImplCopyWith<$Res>
    implements $ArtistStateCopyWith<$Res> {
  factory _$$ArtistStateImplCopyWith(
          _$ArtistStateImpl value, $Res Function(_$ArtistStateImpl) then) =
      __$$ArtistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TrackListWrapper? trackListWrapper, ArtistModel? artist});

  @override
  $TrackListWrapperCopyWith<$Res>? get trackListWrapper;
  @override
  $ArtistModelCopyWith<$Res>? get artist;
}

/// @nodoc
class __$$ArtistStateImplCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res, _$ArtistStateImpl>
    implements _$$ArtistStateImplCopyWith<$Res> {
  __$$ArtistStateImplCopyWithImpl(
      _$ArtistStateImpl _value, $Res Function(_$ArtistStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackListWrapper = freezed,
    Object? artist = freezed,
  }) {
    return _then(_$ArtistStateImpl(
      trackListWrapper: freezed == trackListWrapper
          ? _value.trackListWrapper
          : trackListWrapper // ignore: cast_nullable_to_non_nullable
              as TrackListWrapper?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistModel?,
    ));
  }
}

/// @nodoc

class _$ArtistStateImpl with DiagnosticableTreeMixin implements _ArtistState {
  const _$ArtistStateImpl(
      {required this.trackListWrapper, required this.artist});

  @override
  final TrackListWrapper? trackListWrapper;
  @override
  final ArtistModel? artist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistState(trackListWrapper: $trackListWrapper, artist: $artist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistState'))
      ..add(DiagnosticsProperty('trackListWrapper', trackListWrapper))
      ..add(DiagnosticsProperty('artist', artist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistStateImpl &&
            (identical(other.trackListWrapper, trackListWrapper) ||
                other.trackListWrapper == trackListWrapper) &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackListWrapper, artist);

  /// Create a copy of ArtistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistStateImplCopyWith<_$ArtistStateImpl> get copyWith =>
      __$$ArtistStateImplCopyWithImpl<_$ArtistStateImpl>(this, _$identity);
}

abstract class _ArtistState implements ArtistState {
  const factory _ArtistState(
      {required final TrackListWrapper? trackListWrapper,
      required final ArtistModel? artist}) = _$ArtistStateImpl;

  @override
  TrackListWrapper? get trackListWrapper;
  @override
  ArtistModel? get artist;

  /// Create a copy of ArtistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistStateImplCopyWith<_$ArtistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialize,
    required TResult Function(TrackAlbumModel model) setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initialize,
    TResult? Function(TrackAlbumModel model)? setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialize,
    TResult Function(TrackAlbumModel model)? setFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IsFavorite value) setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IsFavorite value)? setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IsFavorite value)? setFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistEventCopyWith<$Res> {
  factory $ArtistEventCopyWith(
          ArtistEvent value, $Res Function(ArtistEvent) then) =
      _$ArtistEventCopyWithImpl<$Res, ArtistEvent>;
}

/// @nodoc
class _$ArtistEventCopyWithImpl<$Res, $Val extends ArtistEvent>
    implements $ArtistEventCopyWith<$Res> {
  _$ArtistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$ArtistEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$InitializeImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeImpl with DiagnosticableTreeMixin implements _Initialize {
  const _$InitializeImpl(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistEvent.initialize(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistEvent.initialize'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialize,
    required TResult Function(TrackAlbumModel model) setFavorite,
  }) {
    return initialize(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initialize,
    TResult? Function(TrackAlbumModel model)? setFavorite,
  }) {
    return initialize?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialize,
    TResult Function(TrackAlbumModel model)? setFavorite,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IsFavorite value) setFavorite,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IsFavorite value)? setFavorite,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IsFavorite value)? setFavorite,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ArtistEvent {
  const factory _Initialize(final String id) = _$InitializeImpl;

  String get id;

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsFavoriteImplCopyWith<$Res> {
  factory _$$IsFavoriteImplCopyWith(
          _$IsFavoriteImpl value, $Res Function(_$IsFavoriteImpl) then) =
      __$$IsFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackAlbumModel model});

  $TrackAlbumModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$IsFavoriteImplCopyWithImpl<$Res>
    extends _$ArtistEventCopyWithImpl<$Res, _$IsFavoriteImpl>
    implements _$$IsFavoriteImplCopyWith<$Res> {
  __$$IsFavoriteImplCopyWithImpl(
      _$IsFavoriteImpl _value, $Res Function(_$IsFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$IsFavoriteImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TrackAlbumModel,
    ));
  }

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackAlbumModelCopyWith<$Res> get model {
    return $TrackAlbumModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$IsFavoriteImpl with DiagnosticableTreeMixin implements _IsFavorite {
  const _$IsFavoriteImpl(this.model);

  @override
  final TrackAlbumModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistEvent.setFavorite(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistEvent.setFavorite'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFavoriteImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsFavoriteImplCopyWith<_$IsFavoriteImpl> get copyWith =>
      __$$IsFavoriteImplCopyWithImpl<_$IsFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialize,
    required TResult Function(TrackAlbumModel model) setFavorite,
  }) {
    return setFavorite(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initialize,
    TResult? Function(TrackAlbumModel model)? setFavorite,
  }) {
    return setFavorite?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialize,
    TResult Function(TrackAlbumModel model)? setFavorite,
    required TResult orElse(),
  }) {
    if (setFavorite != null) {
      return setFavorite(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IsFavorite value) setFavorite,
  }) {
    return setFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IsFavorite value)? setFavorite,
  }) {
    return setFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IsFavorite value)? setFavorite,
    required TResult orElse(),
  }) {
    if (setFavorite != null) {
      return setFavorite(this);
    }
    return orElse();
  }
}

abstract class _IsFavorite implements ArtistEvent {
  const factory _IsFavorite(final TrackAlbumModel model) = _$IsFavoriteImpl;

  TrackAlbumModel get model;

  /// Create a copy of ArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsFavoriteImplCopyWith<_$IsFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
