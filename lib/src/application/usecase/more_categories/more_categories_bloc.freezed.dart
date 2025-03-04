// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoreCategoriesState {
  CategoryListWrapper? get categories => throw _privateConstructorUsedError;

  /// Create a copy of MoreCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoreCategoriesStateCopyWith<MoreCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreCategoriesStateCopyWith<$Res> {
  factory $MoreCategoriesStateCopyWith(
          MoreCategoriesState value, $Res Function(MoreCategoriesState) then) =
      _$MoreCategoriesStateCopyWithImpl<$Res, MoreCategoriesState>;
  @useResult
  $Res call({CategoryListWrapper? categories});

  $CategoryListWrapperCopyWith<$Res>? get categories;
}

/// @nodoc
class _$MoreCategoriesStateCopyWithImpl<$Res, $Val extends MoreCategoriesState>
    implements $MoreCategoriesStateCopyWith<$Res> {
  _$MoreCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoreCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryListWrapper?,
    ) as $Val);
  }

  /// Create a copy of MoreCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryListWrapperCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoryListWrapperCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoreCategoriesStateImplCopyWith<$Res>
    implements $MoreCategoriesStateCopyWith<$Res> {
  factory _$$MoreCategoriesStateImplCopyWith(_$MoreCategoriesStateImpl value,
          $Res Function(_$MoreCategoriesStateImpl) then) =
      __$$MoreCategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryListWrapper? categories});

  @override
  $CategoryListWrapperCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$MoreCategoriesStateImplCopyWithImpl<$Res>
    extends _$MoreCategoriesStateCopyWithImpl<$Res, _$MoreCategoriesStateImpl>
    implements _$$MoreCategoriesStateImplCopyWith<$Res> {
  __$$MoreCategoriesStateImplCopyWithImpl(_$MoreCategoriesStateImpl _value,
      $Res Function(_$MoreCategoriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoreCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$MoreCategoriesStateImpl(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryListWrapper?,
    ));
  }
}

/// @nodoc

class _$MoreCategoriesStateImpl implements _MoreCategoriesState {
  const _$MoreCategoriesStateImpl({required this.categories});

  @override
  final CategoryListWrapper? categories;

  @override
  String toString() {
    return 'MoreCategoriesState(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoreCategoriesStateImpl &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categories);

  /// Create a copy of MoreCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoreCategoriesStateImplCopyWith<_$MoreCategoriesStateImpl> get copyWith =>
      __$$MoreCategoriesStateImplCopyWithImpl<_$MoreCategoriesStateImpl>(
          this, _$identity);
}

abstract class _MoreCategoriesState implements MoreCategoriesState {
  const factory _MoreCategoriesState(
          {required final CategoryListWrapper? categories}) =
      _$MoreCategoriesStateImpl;

  @override
  CategoryListWrapper? get categories;

  /// Create a copy of MoreCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoreCategoriesStateImplCopyWith<_$MoreCategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoreCategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreCategoriesEventCopyWith<$Res> {
  factory $MoreCategoriesEventCopyWith(
          MoreCategoriesEvent value, $Res Function(MoreCategoriesEvent) then) =
      _$MoreCategoriesEventCopyWithImpl<$Res, MoreCategoriesEvent>;
}

/// @nodoc
class _$MoreCategoriesEventCopyWithImpl<$Res, $Val extends MoreCategoriesEvent>
    implements $MoreCategoriesEventCopyWith<$Res> {
  _$MoreCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoreCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$MoreCategoriesEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoreCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'MoreCategoriesEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements MoreCategoriesEvent {
  const factory _Initialize() = _$InitializeImpl;
}
