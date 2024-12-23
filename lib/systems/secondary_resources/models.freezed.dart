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

SecondaryResourceState _$SecondaryResourceStateFromJson(
    Map<String, dynamic> json) {
  return _SecondaryResourceState.fromJson(json);
}

/// @nodoc
mixin _$SecondaryResourceState {
  double get cpuPower => throw _privateConstructorUsedError;
  int get ram => throw _privateConstructorUsedError;
  int get gpuVram => throw _privateConstructorUsedError;
  int get availableProjectSlots => throw _privateConstructorUsedError;
  int get reputationPoints => throw _privateConstructorUsedError;

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
      {double cpuPower,
      int ram,
      int gpuVram,
      int availableProjectSlots,
      int reputationPoints});
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
    Object? cpuPower = null,
    Object? ram = null,
    Object? gpuVram = null,
    Object? availableProjectSlots = null,
    Object? reputationPoints = null,
  }) {
    return _then(_value.copyWith(
      cpuPower: null == cpuPower
          ? _value.cpuPower
          : cpuPower // ignore: cast_nullable_to_non_nullable
              as double,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as int,
      gpuVram: null == gpuVram
          ? _value.gpuVram
          : gpuVram // ignore: cast_nullable_to_non_nullable
              as int,
      availableProjectSlots: null == availableProjectSlots
          ? _value.availableProjectSlots
          : availableProjectSlots // ignore: cast_nullable_to_non_nullable
              as int,
      reputationPoints: null == reputationPoints
          ? _value.reputationPoints
          : reputationPoints // ignore: cast_nullable_to_non_nullable
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
      {double cpuPower,
      int ram,
      int gpuVram,
      int availableProjectSlots,
      int reputationPoints});
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
    Object? cpuPower = null,
    Object? ram = null,
    Object? gpuVram = null,
    Object? availableProjectSlots = null,
    Object? reputationPoints = null,
  }) {
    return _then(_$SecondaryResourceStateImpl(
      cpuPower: null == cpuPower
          ? _value.cpuPower
          : cpuPower // ignore: cast_nullable_to_non_nullable
              as double,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as int,
      gpuVram: null == gpuVram
          ? _value.gpuVram
          : gpuVram // ignore: cast_nullable_to_non_nullable
              as int,
      availableProjectSlots: null == availableProjectSlots
          ? _value.availableProjectSlots
          : availableProjectSlots // ignore: cast_nullable_to_non_nullable
              as int,
      reputationPoints: null == reputationPoints
          ? _value.reputationPoints
          : reputationPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecondaryResourceStateImpl implements _SecondaryResourceState {
  const _$SecondaryResourceStateImpl(
      {required this.cpuPower,
      required this.ram,
      required this.gpuVram,
      required this.availableProjectSlots,
      required this.reputationPoints});

  factory _$SecondaryResourceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondaryResourceStateImplFromJson(json);

  @override
  final double cpuPower;
  @override
  final int ram;
  @override
  final int gpuVram;
  @override
  final int availableProjectSlots;
  @override
  final int reputationPoints;

  @override
  String toString() {
    return 'SecondaryResourceState(cpuPower: $cpuPower, ram: $ram, gpuVram: $gpuVram, availableProjectSlots: $availableProjectSlots, reputationPoints: $reputationPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondaryResourceStateImpl &&
            (identical(other.cpuPower, cpuPower) ||
                other.cpuPower == cpuPower) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.gpuVram, gpuVram) || other.gpuVram == gpuVram) &&
            (identical(other.availableProjectSlots, availableProjectSlots) ||
                other.availableProjectSlots == availableProjectSlots) &&
            (identical(other.reputationPoints, reputationPoints) ||
                other.reputationPoints == reputationPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cpuPower, ram, gpuVram,
      availableProjectSlots, reputationPoints);

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
      {required final double cpuPower,
      required final int ram,
      required final int gpuVram,
      required final int availableProjectSlots,
      required final int reputationPoints}) = _$SecondaryResourceStateImpl;

  factory _SecondaryResourceState.fromJson(Map<String, dynamic> json) =
      _$SecondaryResourceStateImpl.fromJson;

  @override
  double get cpuPower;
  @override
  int get ram;
  @override
  int get gpuVram;
  @override
  int get availableProjectSlots;
  @override
  int get reputationPoints;

  /// Create a copy of SecondaryResourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecondaryResourceStateImplCopyWith<_$SecondaryResourceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
