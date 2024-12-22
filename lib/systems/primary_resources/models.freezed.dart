// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrimaryResourcesState _$PrimaryResourcesStateFromJson(
    Map<String, dynamic> json) {
  return _ResourcesState.fromJson(json);
}

/// @nodoc
mixin _$PrimaryResourcesState {
  int get xp => throw _privateConstructorUsedError;
  int get money => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  /// Serializes this PrimaryResourcesState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrimaryResourcesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrimaryResourcesStateCopyWith<PrimaryResourcesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryResourcesStateCopyWith<$Res> {
  factory $PrimaryResourcesStateCopyWith(PrimaryResourcesState value,
          $Res Function(PrimaryResourcesState) then) =
      _$PrimaryResourcesStateCopyWithImpl<$Res, PrimaryResourcesState>;
  @useResult
  $Res call({int xp, int money, int level});
}

/// @nodoc
class _$PrimaryResourcesStateCopyWithImpl<$Res,
        $Val extends PrimaryResourcesState>
    implements $PrimaryResourcesStateCopyWith<$Res> {
  _$PrimaryResourcesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrimaryResourcesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? money = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourcesStateImplCopyWith<$Res>
    implements $PrimaryResourcesStateCopyWith<$Res> {
  factory _$$ResourcesStateImplCopyWith(_$ResourcesStateImpl value,
          $Res Function(_$ResourcesStateImpl) then) =
      __$$ResourcesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int xp, int money, int level});
}

/// @nodoc
class __$$ResourcesStateImplCopyWithImpl<$Res>
    extends _$PrimaryResourcesStateCopyWithImpl<$Res, _$ResourcesStateImpl>
    implements _$$ResourcesStateImplCopyWith<$Res> {
  __$$ResourcesStateImplCopyWithImpl(
      _$ResourcesStateImpl _value, $Res Function(_$ResourcesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrimaryResourcesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? money = null,
    Object? level = null,
  }) {
    return _then(_$ResourcesStateImpl(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourcesStateImpl extends _ResourcesState {
  const _$ResourcesStateImpl(
      {required this.xp, required this.money, required this.level})
      : super._();

  factory _$ResourcesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourcesStateImplFromJson(json);

  @override
  final int xp;
  @override
  final int money;
  @override
  final int level;

  @override
  String toString() {
    return 'PrimaryResourcesState(xp: $xp, money: $money, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourcesStateImpl &&
            (identical(other.xp, xp) || other.xp == xp) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xp, money, level);

  /// Create a copy of PrimaryResourcesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourcesStateImplCopyWith<_$ResourcesStateImpl> get copyWith =>
      __$$ResourcesStateImplCopyWithImpl<_$ResourcesStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourcesStateImplToJson(
      this,
    );
  }
}

abstract class _ResourcesState extends PrimaryResourcesState {
  const factory _ResourcesState(
      {required final int xp,
      required final int money,
      required final int level}) = _$ResourcesStateImpl;
  const _ResourcesState._() : super._();

  factory _ResourcesState.fromJson(Map<String, dynamic> json) =
      _$ResourcesStateImpl.fromJson;

  @override
  int get xp;
  @override
  int get money;
  @override
  int get level;

  /// Create a copy of PrimaryResourcesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourcesStateImplCopyWith<_$ResourcesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
