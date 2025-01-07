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

/// @nodoc
mixin _$Resource {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call({String key, String name, double value});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl value, $Res Function(_$ResourceImpl) then) =
      __$$ResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String name, double value});
}

/// @nodoc
class __$$ResourceImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$ResourceImpl>
    implements _$$ResourceImplCopyWith<$Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl _value, $Res Function(_$ResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$ResourceImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ResourceImpl implements _Resource {
  const _$ResourceImpl(
      {required this.key, required this.name, this.value = 0.0});

  @override
  final String key;
  @override
  final String name;
  @override
  @JsonKey()
  final double value;

  @override
  String toString() {
    return 'Resource(key: $key, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, name, value);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      __$$ResourceImplCopyWithImpl<_$ResourceImpl>(this, _$identity);
}

abstract class _Resource implements Resource {
  const factory _Resource(
      {required final String key,
      required final String name,
      final double value}) = _$ResourceImpl;

  @override
  String get key;
  @override
  String get name;
  @override
  double get value;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Upgrade {
  String get id => throw _privateConstructorUsedError;
  String get targetResourceId => throw _privateConstructorUsedError;
  double get baseCost => throw _privateConstructorUsedError;
  double get costMultiplier => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpgradeCopyWith<Upgrade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeCopyWith<$Res> {
  factory $UpgradeCopyWith(Upgrade value, $Res Function(Upgrade) then) =
      _$UpgradeCopyWithImpl<$Res, Upgrade>;
  @useResult
  $Res call(
      {String id,
      String targetResourceId,
      double baseCost,
      double costMultiplier,
      int level});
}

/// @nodoc
class _$UpgradeCopyWithImpl<$Res, $Val extends Upgrade>
    implements $UpgradeCopyWith<$Res> {
  _$UpgradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetResourceId = null,
    Object? baseCost = null,
    Object? costMultiplier = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      targetResourceId: null == targetResourceId
          ? _value.targetResourceId
          : targetResourceId // ignore: cast_nullable_to_non_nullable
              as String,
      baseCost: null == baseCost
          ? _value.baseCost
          : baseCost // ignore: cast_nullable_to_non_nullable
              as double,
      costMultiplier: null == costMultiplier
          ? _value.costMultiplier
          : costMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpgradeImplCopyWith<$Res> implements $UpgradeCopyWith<$Res> {
  factory _$$UpgradeImplCopyWith(
          _$UpgradeImpl value, $Res Function(_$UpgradeImpl) then) =
      __$$UpgradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String targetResourceId,
      double baseCost,
      double costMultiplier,
      int level});
}

/// @nodoc
class __$$UpgradeImplCopyWithImpl<$Res>
    extends _$UpgradeCopyWithImpl<$Res, _$UpgradeImpl>
    implements _$$UpgradeImplCopyWith<$Res> {
  __$$UpgradeImplCopyWithImpl(
      _$UpgradeImpl _value, $Res Function(_$UpgradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetResourceId = null,
    Object? baseCost = null,
    Object? costMultiplier = null,
    Object? level = null,
  }) {
    return _then(_$UpgradeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      targetResourceId: null == targetResourceId
          ? _value.targetResourceId
          : targetResourceId // ignore: cast_nullable_to_non_nullable
              as String,
      baseCost: null == baseCost
          ? _value.baseCost
          : baseCost // ignore: cast_nullable_to_non_nullable
              as double,
      costMultiplier: null == costMultiplier
          ? _value.costMultiplier
          : costMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpgradeImpl implements _Upgrade {
  const _$UpgradeImpl(
      {required this.id,
      required this.targetResourceId,
      required this.baseCost,
      this.costMultiplier = 1.0,
      this.level = 0});

  @override
  final String id;
  @override
  final String targetResourceId;
  @override
  final double baseCost;
  @override
  @JsonKey()
  final double costMultiplier;
  @override
  @JsonKey()
  final int level;

  @override
  String toString() {
    return 'Upgrade(id: $id, targetResourceId: $targetResourceId, baseCost: $baseCost, costMultiplier: $costMultiplier, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpgradeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.targetResourceId, targetResourceId) ||
                other.targetResourceId == targetResourceId) &&
            (identical(other.baseCost, baseCost) ||
                other.baseCost == baseCost) &&
            (identical(other.costMultiplier, costMultiplier) ||
                other.costMultiplier == costMultiplier) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, targetResourceId, baseCost, costMultiplier, level);

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpgradeImplCopyWith<_$UpgradeImpl> get copyWith =>
      __$$UpgradeImplCopyWithImpl<_$UpgradeImpl>(this, _$identity);
}

abstract class _Upgrade implements Upgrade {
  const factory _Upgrade(
      {required final String id,
      required final String targetResourceId,
      required final double baseCost,
      final double costMultiplier,
      final int level}) = _$UpgradeImpl;

  @override
  String get id;
  @override
  String get targetResourceId;
  @override
  double get baseCost;
  @override
  double get costMultiplier;
  @override
  int get level;

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpgradeImplCopyWith<_$UpgradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecondaryResourceState _$SecondaryResourceStateFromJson(
    Map<String, dynamic> json) {
  return _SecondaryResourceState.fromJson(json);
}

/// @nodoc
mixin _$SecondaryResourceState {
  double get techSkills => throw _privateConstructorUsedError;
  double get devTools => throw _privateConstructorUsedError;
  double get hardware => throw _privateConstructorUsedError;
  int get focusPoints => throw _privateConstructorUsedError;

  /// Serializes this SecondaryResourceState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SecondaryResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SecondaryResourceStateCopyWith<SecondaryResourceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondaryResourceStateCopyWith<$Res> {
  factory $SecondaryResourceStateCopyWith(SecondaryResourceState value,
          $Res Function(SecondaryResourceState) then) =
      _$SecondaryResourceStateCopyWithImpl<$Res, SecondaryResourceState>;
  @useResult
  $Res call(
      {double techSkills, double devTools, double hardware, int focusPoints});
}

/// @nodoc
class _$SecondaryResourceStateCopyWithImpl<$Res,
        $Val extends SecondaryResourceState>
    implements $SecondaryResourceStateCopyWith<$Res> {
  _$SecondaryResourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecondaryResourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techSkills = null,
    Object? devTools = null,
    Object? hardware = null,
    Object? focusPoints = null,
  }) {
    return _then(_value.copyWith(
      techSkills: null == techSkills
          ? _value.techSkills
          : techSkills // ignore: cast_nullable_to_non_nullable
              as double,
      devTools: null == devTools
          ? _value.devTools
          : devTools // ignore: cast_nullable_to_non_nullable
              as double,
      hardware: null == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as double,
      focusPoints: null == focusPoints
          ? _value.focusPoints
          : focusPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecondaryResourceStateImplCopyWith<$Res>
    implements $SecondaryResourceStateCopyWith<$Res> {
  factory _$$SecondaryResourceStateImplCopyWith(
          _$SecondaryResourceStateImpl value,
          $Res Function(_$SecondaryResourceStateImpl) then) =
      __$$SecondaryResourceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double techSkills, double devTools, double hardware, int focusPoints});
}

/// @nodoc
class __$$SecondaryResourceStateImplCopyWithImpl<$Res>
    extends _$SecondaryResourceStateCopyWithImpl<$Res,
        _$SecondaryResourceStateImpl>
    implements _$$SecondaryResourceStateImplCopyWith<$Res> {
  __$$SecondaryResourceStateImplCopyWithImpl(
      _$SecondaryResourceStateImpl _value,
      $Res Function(_$SecondaryResourceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecondaryResourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techSkills = null,
    Object? devTools = null,
    Object? hardware = null,
    Object? focusPoints = null,
  }) {
    return _then(_$SecondaryResourceStateImpl(
      techSkills: null == techSkills
          ? _value.techSkills
          : techSkills // ignore: cast_nullable_to_non_nullable
              as double,
      devTools: null == devTools
          ? _value.devTools
          : devTools // ignore: cast_nullable_to_non_nullable
              as double,
      hardware: null == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as double,
      focusPoints: null == focusPoints
          ? _value.focusPoints
          : focusPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecondaryResourceStateImpl implements _SecondaryResourceState {
  const _$SecondaryResourceStateImpl(
      {required this.techSkills,
      required this.devTools,
      required this.hardware,
      required this.focusPoints});

  factory _$SecondaryResourceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondaryResourceStateImplFromJson(json);

  @override
  final double techSkills;
  @override
  final double devTools;
  @override
  final double hardware;
  @override
  final int focusPoints;

  @override
  String toString() {
    return 'SecondaryResourceState(techSkills: $techSkills, devTools: $devTools, hardware: $hardware, focusPoints: $focusPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondaryResourceStateImpl &&
            (identical(other.techSkills, techSkills) ||
                other.techSkills == techSkills) &&
            (identical(other.devTools, devTools) ||
                other.devTools == devTools) &&
            (identical(other.hardware, hardware) ||
                other.hardware == hardware) &&
            (identical(other.focusPoints, focusPoints) ||
                other.focusPoints == focusPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, techSkills, devTools, hardware, focusPoints);

  /// Create a copy of SecondaryResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondaryResourceStateImplCopyWith<_$SecondaryResourceStateImpl>
      get copyWith => __$$SecondaryResourceStateImplCopyWithImpl<
          _$SecondaryResourceStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondaryResourceStateImplToJson(
      this,
    );
  }
}

abstract class _SecondaryResourceState implements SecondaryResourceState {
  const factory _SecondaryResourceState(
      {required final double techSkills,
      required final double devTools,
      required final double hardware,
      required final int focusPoints}) = _$SecondaryResourceStateImpl;

  factory _SecondaryResourceState.fromJson(Map<String, dynamic> json) =
      _$SecondaryResourceStateImpl.fromJson;

  @override
  double get techSkills;
  @override
  double get devTools;
  @override
  double get hardware;
  @override
  int get focusPoints;

  /// Create a copy of SecondaryResourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecondaryResourceStateImplCopyWith<_$SecondaryResourceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
