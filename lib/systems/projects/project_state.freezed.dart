// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectState _$ProjectStateFromJson(Map<String, dynamic> json) {
  return _ProjectState.fromJson(json);
}

/// @nodoc
mixin _$ProjectState {
  Project get project => throw _privateConstructorUsedError;
  Completion get completion => throw _privateConstructorUsedError;
  ProjectReward get reward => throw _privateConstructorUsedError;

  /// Serializes this ProjectState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
  @useResult
  $Res call({Project project, Completion completion, ProjectReward reward});

  $ProjectCopyWith<$Res> get project;
  $CompletionCopyWith<$Res> get completion;
  $ProjectRewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState>
    implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? completion = null,
    Object? reward = null,
  }) {
    return _then(_value.copyWith(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      completion: null == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as Completion,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ProjectReward,
    ) as $Val);
  }

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompletionCopyWith<$Res> get completion {
    return $CompletionCopyWith<$Res>(_value.completion, (value) {
      return _then(_value.copyWith(completion: value) as $Val);
    });
  }

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectRewardCopyWith<$Res> get reward {
    return $ProjectRewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStateImplCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$$ProjectStateImplCopyWith(
          _$ProjectStateImpl value, $Res Function(_$ProjectStateImpl) then) =
      __$$ProjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Project project, Completion completion, ProjectReward reward});

  @override
  $ProjectCopyWith<$Res> get project;
  @override
  $CompletionCopyWith<$Res> get completion;
  @override
  $ProjectRewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$$ProjectStateImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateImpl>
    implements _$$ProjectStateImplCopyWith<$Res> {
  __$$ProjectStateImplCopyWithImpl(
      _$ProjectStateImpl _value, $Res Function(_$ProjectStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? completion = null,
    Object? reward = null,
  }) {
    return _then(_$ProjectStateImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      completion: null == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as Completion,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ProjectReward,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectStateImpl implements _ProjectState {
  const _$ProjectStateImpl(
      {required this.project, required this.completion, required this.reward});

  factory _$ProjectStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectStateImplFromJson(json);

  @override
  final Project project;
  @override
  final Completion completion;
  @override
  final ProjectReward reward;

  @override
  String toString() {
    return 'ProjectState(project: $project, completion: $completion, reward: $reward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStateImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.completion, completion) ||
                other.completion == completion) &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, project, completion, reward);

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      __$$ProjectStateImplCopyWithImpl<_$ProjectStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectStateImplToJson(
      this,
    );
  }
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState(
      {required final Project project,
      required final Completion completion,
      required final ProjectReward reward}) = _$ProjectStateImpl;

  factory _ProjectState.fromJson(Map<String, dynamic> json) =
      _$ProjectStateImpl.fromJson;

  @override
  Project get project;
  @override
  Completion get completion;
  @override
  ProjectReward get reward;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectReward _$ProjectRewardFromJson(Map<String, dynamic> json) {
  return _ProjectReward.fromJson(json);
}

/// @nodoc
mixin _$ProjectReward {
  int get xpAmount => throw _privateConstructorUsedError;
  int get moneyAmount => throw _privateConstructorUsedError;

  /// Serializes this ProjectReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectRewardCopyWith<ProjectReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectRewardCopyWith<$Res> {
  factory $ProjectRewardCopyWith(
          ProjectReward value, $Res Function(ProjectReward) then) =
      _$ProjectRewardCopyWithImpl<$Res, ProjectReward>;
  @useResult
  $Res call({int xpAmount, int moneyAmount});
}

/// @nodoc
class _$ProjectRewardCopyWithImpl<$Res, $Val extends ProjectReward>
    implements $ProjectRewardCopyWith<$Res> {
  _$ProjectRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xpAmount = null,
    Object? moneyAmount = null,
  }) {
    return _then(_value.copyWith(
      xpAmount: null == xpAmount
          ? _value.xpAmount
          : xpAmount // ignore: cast_nullable_to_non_nullable
              as int,
      moneyAmount: null == moneyAmount
          ? _value.moneyAmount
          : moneyAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectRewardImplCopyWith<$Res>
    implements $ProjectRewardCopyWith<$Res> {
  factory _$$ProjectRewardImplCopyWith(
          _$ProjectRewardImpl value, $Res Function(_$ProjectRewardImpl) then) =
      __$$ProjectRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int xpAmount, int moneyAmount});
}

/// @nodoc
class __$$ProjectRewardImplCopyWithImpl<$Res>
    extends _$ProjectRewardCopyWithImpl<$Res, _$ProjectRewardImpl>
    implements _$$ProjectRewardImplCopyWith<$Res> {
  __$$ProjectRewardImplCopyWithImpl(
      _$ProjectRewardImpl _value, $Res Function(_$ProjectRewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xpAmount = null,
    Object? moneyAmount = null,
  }) {
    return _then(_$ProjectRewardImpl(
      xpAmount: null == xpAmount
          ? _value.xpAmount
          : xpAmount // ignore: cast_nullable_to_non_nullable
              as int,
      moneyAmount: null == moneyAmount
          ? _value.moneyAmount
          : moneyAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectRewardImpl implements _ProjectReward {
  const _$ProjectRewardImpl(
      {required this.xpAmount, required this.moneyAmount});

  factory _$ProjectRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectRewardImplFromJson(json);

  @override
  final int xpAmount;
  @override
  final int moneyAmount;

  @override
  String toString() {
    return 'ProjectReward(xpAmount: $xpAmount, moneyAmount: $moneyAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectRewardImpl &&
            (identical(other.xpAmount, xpAmount) ||
                other.xpAmount == xpAmount) &&
            (identical(other.moneyAmount, moneyAmount) ||
                other.moneyAmount == moneyAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xpAmount, moneyAmount);

  /// Create a copy of ProjectReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectRewardImplCopyWith<_$ProjectRewardImpl> get copyWith =>
      __$$ProjectRewardImplCopyWithImpl<_$ProjectRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectRewardImplToJson(
      this,
    );
  }
}

abstract class _ProjectReward implements ProjectReward {
  const factory _ProjectReward(
      {required final int xpAmount,
      required final int moneyAmount}) = _$ProjectRewardImpl;

  factory _ProjectReward.fromJson(Map<String, dynamic> json) =
      _$ProjectRewardImpl.fromJson;

  @override
  int get xpAmount;
  @override
  int get moneyAmount;

  /// Create a copy of ProjectReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectRewardImplCopyWith<_$ProjectRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Completion _$CompletionFromJson(Map<String, dynamic> json) {
  return _Completion.fromJson(json);
}

/// @nodoc
mixin _$Completion {
  double get baseAmount => throw _privateConstructorUsedError;
  double get completedAmount => throw _privateConstructorUsedError;
  List<double> get multipliers => throw _privateConstructorUsedError;

  /// Serializes this Completion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletionCopyWith<Completion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionCopyWith<$Res> {
  factory $CompletionCopyWith(
          Completion value, $Res Function(Completion) then) =
      _$CompletionCopyWithImpl<$Res, Completion>;
  @useResult
  $Res call(
      {double baseAmount, double completedAmount, List<double> multipliers});
}

/// @nodoc
class _$CompletionCopyWithImpl<$Res, $Val extends Completion>
    implements $CompletionCopyWith<$Res> {
  _$CompletionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseAmount = null,
    Object? completedAmount = null,
    Object? multipliers = null,
  }) {
    return _then(_value.copyWith(
      baseAmount: null == baseAmount
          ? _value.baseAmount
          : baseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      completedAmount: null == completedAmount
          ? _value.completedAmount
          : completedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      multipliers: null == multipliers
          ? _value.multipliers
          : multipliers // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletionImplCopyWith<$Res>
    implements $CompletionCopyWith<$Res> {
  factory _$$CompletionImplCopyWith(
          _$CompletionImpl value, $Res Function(_$CompletionImpl) then) =
      __$$CompletionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double baseAmount, double completedAmount, List<double> multipliers});
}

/// @nodoc
class __$$CompletionImplCopyWithImpl<$Res>
    extends _$CompletionCopyWithImpl<$Res, _$CompletionImpl>
    implements _$$CompletionImplCopyWith<$Res> {
  __$$CompletionImplCopyWithImpl(
      _$CompletionImpl _value, $Res Function(_$CompletionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseAmount = null,
    Object? completedAmount = null,
    Object? multipliers = null,
  }) {
    return _then(_$CompletionImpl(
      baseAmount: null == baseAmount
          ? _value.baseAmount
          : baseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      completedAmount: null == completedAmount
          ? _value.completedAmount
          : completedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      multipliers: null == multipliers
          ? _value._multipliers
          : multipliers // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionImpl extends _Completion {
  const _$CompletionImpl(
      {required this.baseAmount,
      required this.completedAmount,
      required final List<double> multipliers})
      : _multipliers = multipliers,
        super._();

  factory _$CompletionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionImplFromJson(json);

  @override
  final double baseAmount;
  @override
  final double completedAmount;
  final List<double> _multipliers;
  @override
  List<double> get multipliers {
    if (_multipliers is EqualUnmodifiableListView) return _multipliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multipliers);
  }

  @override
  String toString() {
    return 'Completion(baseAmount: $baseAmount, completedAmount: $completedAmount, multipliers: $multipliers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionImpl &&
            (identical(other.baseAmount, baseAmount) ||
                other.baseAmount == baseAmount) &&
            (identical(other.completedAmount, completedAmount) ||
                other.completedAmount == completedAmount) &&
            const DeepCollectionEquality()
                .equals(other._multipliers, _multipliers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseAmount, completedAmount,
      const DeepCollectionEquality().hash(_multipliers));

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionImplCopyWith<_$CompletionImpl> get copyWith =>
      __$$CompletionImplCopyWithImpl<_$CompletionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionImplToJson(
      this,
    );
  }
}

abstract class _Completion extends Completion {
  const factory _Completion(
      {required final double baseAmount,
      required final double completedAmount,
      required final List<double> multipliers}) = _$CompletionImpl;
  const _Completion._() : super._();

  factory _Completion.fromJson(Map<String, dynamic> json) =
      _$CompletionImpl.fromJson;

  @override
  double get baseAmount;
  @override
  double get completedAmount;
  @override
  List<double> get multipliers;

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletionImplCopyWith<_$CompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
