// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  return _GameState.fromJson(json);
}

/// @nodoc
mixin _$GameState {
  double get xp => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  double get money =>
      throw _privateConstructorUsedError; // Determines the complexity of projects you can handle ie. bigger prereq. but bigger rewards
// Better CPU = Access to more advanced projects
  double get cpuPower =>
      throw _privateConstructorUsedError; // Enables auto clicking - auto clicking efficiency
// Affects the "thinking speed" (passive completion rate)
  double get gpuVram =>
      throw _privateConstructorUsedError; // Determines how many projects can be active simultaneously
  double get ram =>
      throw _privateConstructorUsedError; // Affects the base clicking efficiency
  double get cpuSpeed => throw _privateConstructorUsedError;
  List<Project> get projects => throw _privateConstructorUsedError;

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {double xp,
      int level,
      double money,
      double cpuPower,
      double gpuVram,
      double ram,
      double cpuSpeed,
      List<Project> projects});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? level = null,
    Object? money = null,
    Object? cpuPower = null,
    Object? gpuVram = null,
    Object? ram = null,
    Object? cpuSpeed = null,
    Object? projects = null,
  }) {
    return _then(_value.copyWith(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      cpuPower: null == cpuPower
          ? _value.cpuPower
          : cpuPower // ignore: cast_nullable_to_non_nullable
              as double,
      gpuVram: null == gpuVram
          ? _value.gpuVram
          : gpuVram // ignore: cast_nullable_to_non_nullable
              as double,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as double,
      cpuSpeed: null == cpuSpeed
          ? _value.cpuSpeed
          : cpuSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double xp,
      int level,
      double money,
      double cpuPower,
      double gpuVram,
      double ram,
      double cpuSpeed,
      List<Project> projects});
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? level = null,
    Object? money = null,
    Object? cpuPower = null,
    Object? gpuVram = null,
    Object? ram = null,
    Object? cpuSpeed = null,
    Object? projects = null,
  }) {
    return _then(_$GameStateImpl(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      cpuPower: null == cpuPower
          ? _value.cpuPower
          : cpuPower // ignore: cast_nullable_to_non_nullable
              as double,
      gpuVram: null == gpuVram
          ? _value.gpuVram
          : gpuVram // ignore: cast_nullable_to_non_nullable
              as double,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as double,
      cpuSpeed: null == cpuSpeed
          ? _value.cpuSpeed
          : cpuSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateImpl extends _GameState {
  const _$GameStateImpl(
      {required this.xp,
      required this.level,
      required this.money,
      required this.cpuPower,
      required this.gpuVram,
      required this.ram,
      required this.cpuSpeed,
      required final List<Project> projects})
      : _projects = projects,
        super._();

  factory _$GameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateImplFromJson(json);

  @override
  final double xp;
  @override
  final int level;
  @override
  final double money;
// Determines the complexity of projects you can handle ie. bigger prereq. but bigger rewards
// Better CPU = Access to more advanced projects
  @override
  final double cpuPower;
// Enables auto clicking - auto clicking efficiency
// Affects the "thinking speed" (passive completion rate)
  @override
  final double gpuVram;
// Determines how many projects can be active simultaneously
  @override
  final double ram;
// Affects the base clicking efficiency
  @override
  final double cpuSpeed;
  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'GameState(xp: $xp, level: $level, money: $money, cpuPower: $cpuPower, gpuVram: $gpuVram, ram: $ram, cpuSpeed: $cpuSpeed, projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.xp, xp) || other.xp == xp) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.cpuPower, cpuPower) ||
                other.cpuPower == cpuPower) &&
            (identical(other.gpuVram, gpuVram) || other.gpuVram == gpuVram) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.cpuSpeed, cpuSpeed) ||
                other.cpuSpeed == cpuSpeed) &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xp, level, money, cpuPower,
      gpuVram, ram, cpuSpeed, const DeepCollectionEquality().hash(_projects));

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateImplToJson(
      this,
    );
  }
}

abstract class _GameState extends GameState {
  const factory _GameState(
      {required final double xp,
      required final int level,
      required final double money,
      required final double cpuPower,
      required final double gpuVram,
      required final double ram,
      required final double cpuSpeed,
      required final List<Project> projects}) = _$GameStateImpl;
  const _GameState._() : super._();

  factory _GameState.fromJson(Map<String, dynamic> json) =
      _$GameStateImpl.fromJson;

  @override
  double get xp;
  @override
  int get level;
  @override
  double
      get money; // Determines the complexity of projects you can handle ie. bigger prereq. but bigger rewards
// Better CPU = Access to more advanced projects
  @override
  double get cpuPower; // Enables auto clicking - auto clicking efficiency
// Affects the "thinking speed" (passive completion rate)
  @override
  double
      get gpuVram; // Determines how many projects can be active simultaneously
  @override
  double get ram; // Affects the base clicking efficiency
  @override
  double get cpuSpeed;
  @override
  List<Project> get projects;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
