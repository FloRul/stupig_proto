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
