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

ExperienceState _$ExperienceStateFromJson(Map<String, dynamic> json) {
  return _ExperienceState.fromJson(json);
}

/// @nodoc
mixin _$ExperienceState {
  int get xp => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  /// Serializes this ExperienceState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExperienceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceStateCopyWith<ExperienceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceStateCopyWith<$Res> {
  factory $ExperienceStateCopyWith(
          ExperienceState value, $Res Function(ExperienceState) then) =
      _$ExperienceStateCopyWithImpl<$Res, ExperienceState>;
  @useResult
  $Res call({int xp, int level});
}

/// @nodoc
class _$ExperienceStateCopyWithImpl<$Res, $Val extends ExperienceState>
    implements $ExperienceStateCopyWith<$Res> {
  _$ExperienceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExperienceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceStateImplCopyWith<$Res>
    implements $ExperienceStateCopyWith<$Res> {
  factory _$$ExperienceStateImplCopyWith(_$ExperienceStateImpl value,
          $Res Function(_$ExperienceStateImpl) then) =
      __$$ExperienceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int xp, int level});
}

/// @nodoc
class __$$ExperienceStateImplCopyWithImpl<$Res>
    extends _$ExperienceStateCopyWithImpl<$Res, _$ExperienceStateImpl>
    implements _$$ExperienceStateImplCopyWith<$Res> {
  __$$ExperienceStateImplCopyWithImpl(
      _$ExperienceStateImpl _value, $Res Function(_$ExperienceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExperienceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? level = null,
  }) {
    return _then(_$ExperienceStateImpl(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
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
class _$ExperienceStateImpl extends _ExperienceState {
  const _$ExperienceStateImpl({required this.xp, required this.level})
      : super._();

  factory _$ExperienceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceStateImplFromJson(json);

  @override
  final int xp;
  @override
  final int level;

  @override
  String toString() {
    return 'ExperienceState(xp: $xp, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceStateImpl &&
            (identical(other.xp, xp) || other.xp == xp) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xp, level);

  /// Create a copy of ExperienceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceStateImplCopyWith<_$ExperienceStateImpl> get copyWith =>
      __$$ExperienceStateImplCopyWithImpl<_$ExperienceStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceStateImplToJson(
      this,
    );
  }
}

abstract class _ExperienceState extends ExperienceState {
  const factory _ExperienceState(
      {required final int xp,
      required final int level}) = _$ExperienceStateImpl;
  const _ExperienceState._() : super._();

  factory _ExperienceState.fromJson(Map<String, dynamic> json) =
      _$ExperienceStateImpl.fromJson;

  @override
  int get xp;
  @override
  int get level;

  /// Create a copy of ExperienceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceStateImplCopyWith<_$ExperienceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
