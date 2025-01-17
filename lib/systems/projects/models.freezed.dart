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

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ProjectReward get reward => throw _privateConstructorUsedError;
  int get requiredfocusPoints => throw _privateConstructorUsedError;
  ProjectType get type => throw _privateConstructorUsedError;

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      ProjectReward reward,
      int requiredfocusPoints,
      ProjectType type});

  $ProjectRewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? reward = null,
    Object? requiredfocusPoints = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ProjectReward,
      requiredfocusPoints: null == requiredfocusPoints
          ? _value.requiredfocusPoints
          : requiredfocusPoints // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectType,
    ) as $Val);
  }

  /// Create a copy of Project
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
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      ProjectReward reward,
      int requiredfocusPoints,
      ProjectType type});

  @override
  $ProjectRewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? reward = null,
    Object? requiredfocusPoints = null,
    Object? type = null,
  }) {
    return _then(_$ProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ProjectReward,
      requiredfocusPoints: null == requiredfocusPoints
          ? _value.requiredfocusPoints
          : requiredfocusPoints // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.reward,
      required this.requiredfocusPoints,
      required this.type});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final ProjectReward reward;
  @override
  final int requiredfocusPoints;
  @override
  final ProjectType type;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, description: $description, reward: $reward, requiredfocusPoints: $requiredfocusPoints, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.requiredfocusPoints, requiredfocusPoints) ||
                other.requiredfocusPoints == requiredfocusPoints) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, reward, requiredfocusPoints, type);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {required final String id,
      required final String name,
      required final String description,
      required final ProjectReward reward,
      required final int requiredfocusPoints,
      required final ProjectType type}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  ProjectReward get reward;
  @override
  int get requiredfocusPoints;
  @override
  ProjectType get type;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AvailableProjectsState {
  List<Project> get projects => throw _privateConstructorUsedError;
  Map<String, Completion> get cooldowns => throw _privateConstructorUsedError;
  int get availableDecline => throw _privateConstructorUsedError;

  /// Create a copy of AvailableProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableProjectsStateCopyWith<AvailableProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableProjectsStateCopyWith<$Res> {
  factory $AvailableProjectsStateCopyWith(AvailableProjectsState value,
          $Res Function(AvailableProjectsState) then) =
      _$AvailableProjectsStateCopyWithImpl<$Res, AvailableProjectsState>;
  @useResult
  $Res call(
      {List<Project> projects,
      Map<String, Completion> cooldowns,
      int availableDecline});
}

/// @nodoc
class _$AvailableProjectsStateCopyWithImpl<$Res,
        $Val extends AvailableProjectsState>
    implements $AvailableProjectsStateCopyWith<$Res> {
  _$AvailableProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? cooldowns = null,
    Object? availableDecline = null,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      cooldowns: null == cooldowns
          ? _value.cooldowns
          : cooldowns // ignore: cast_nullable_to_non_nullable
              as Map<String, Completion>,
      availableDecline: null == availableDecline
          ? _value.availableDecline
          : availableDecline // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableProjectsStateImplCopyWith<$Res>
    implements $AvailableProjectsStateCopyWith<$Res> {
  factory _$$AvailableProjectsStateImplCopyWith(
          _$AvailableProjectsStateImpl value,
          $Res Function(_$AvailableProjectsStateImpl) then) =
      __$$AvailableProjectsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Map<String, Completion> cooldowns,
      int availableDecline});
}

/// @nodoc
class __$$AvailableProjectsStateImplCopyWithImpl<$Res>
    extends _$AvailableProjectsStateCopyWithImpl<$Res,
        _$AvailableProjectsStateImpl>
    implements _$$AvailableProjectsStateImplCopyWith<$Res> {
  __$$AvailableProjectsStateImplCopyWithImpl(
      _$AvailableProjectsStateImpl _value,
      $Res Function(_$AvailableProjectsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvailableProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? cooldowns = null,
    Object? availableDecline = null,
  }) {
    return _then(_$AvailableProjectsStateImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      cooldowns: null == cooldowns
          ? _value._cooldowns
          : cooldowns // ignore: cast_nullable_to_non_nullable
              as Map<String, Completion>,
      availableDecline: null == availableDecline
          ? _value.availableDecline
          : availableDecline // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AvailableProjectsStateImpl implements _AvailableProjectsState {
  const _$AvailableProjectsStateImpl(
      {required final List<Project> projects,
      required final Map<String, Completion> cooldowns,
      required this.availableDecline})
      : _projects = projects,
        _cooldowns = cooldowns;

  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final Map<String, Completion> _cooldowns;
  @override
  Map<String, Completion> get cooldowns {
    if (_cooldowns is EqualUnmodifiableMapView) return _cooldowns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cooldowns);
  }

  @override
  final int availableDecline;

  @override
  String toString() {
    return 'AvailableProjectsState(projects: $projects, cooldowns: $cooldowns, availableDecline: $availableDecline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableProjectsStateImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality()
                .equals(other._cooldowns, _cooldowns) &&
            (identical(other.availableDecline, availableDecline) ||
                other.availableDecline == availableDecline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_cooldowns),
      availableDecline);

  /// Create a copy of AvailableProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableProjectsStateImplCopyWith<_$AvailableProjectsStateImpl>
      get copyWith => __$$AvailableProjectsStateImplCopyWithImpl<
          _$AvailableProjectsStateImpl>(this, _$identity);
}

abstract class _AvailableProjectsState implements AvailableProjectsState {
  const factory _AvailableProjectsState(
      {required final List<Project> projects,
      required final Map<String, Completion> cooldowns,
      required final int availableDecline}) = _$AvailableProjectsStateImpl;

  @override
  List<Project> get projects;
  @override
  Map<String, Completion> get cooldowns;
  @override
  int get availableDecline;

  /// Create a copy of AvailableProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableProjectsStateImplCopyWith<_$AvailableProjectsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActiveProjectsState _$ActiveProjectsStateFromJson(Map<String, dynamic> json) {
  return _ActiveProjectsState.fromJson(json);
}

/// @nodoc
mixin _$ActiveProjectsState {
  List<(Project, Completion, bool?)> get activeProjects =>
      throw _privateConstructorUsedError;

  /// Serializes this ActiveProjectsState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveProjectsStateCopyWith<ActiveProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveProjectsStateCopyWith<$Res> {
  factory $ActiveProjectsStateCopyWith(
          ActiveProjectsState value, $Res Function(ActiveProjectsState) then) =
      _$ActiveProjectsStateCopyWithImpl<$Res, ActiveProjectsState>;
  @useResult
  $Res call({List<(Project, Completion, bool?)> activeProjects});
}

/// @nodoc
class _$ActiveProjectsStateCopyWithImpl<$Res, $Val extends ActiveProjectsState>
    implements $ActiveProjectsStateCopyWith<$Res> {
  _$ActiveProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeProjects = null,
  }) {
    return _then(_value.copyWith(
      activeProjects: null == activeProjects
          ? _value.activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as List<(Project, Completion, bool?)>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveProjectsStateImplCopyWith<$Res>
    implements $ActiveProjectsStateCopyWith<$Res> {
  factory _$$ActiveProjectsStateImplCopyWith(_$ActiveProjectsStateImpl value,
          $Res Function(_$ActiveProjectsStateImpl) then) =
      __$$ActiveProjectsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<(Project, Completion, bool?)> activeProjects});
}

/// @nodoc
class __$$ActiveProjectsStateImplCopyWithImpl<$Res>
    extends _$ActiveProjectsStateCopyWithImpl<$Res, _$ActiveProjectsStateImpl>
    implements _$$ActiveProjectsStateImplCopyWith<$Res> {
  __$$ActiveProjectsStateImplCopyWithImpl(_$ActiveProjectsStateImpl _value,
      $Res Function(_$ActiveProjectsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeProjects = null,
  }) {
    return _then(_$ActiveProjectsStateImpl(
      activeProjects: null == activeProjects
          ? _value._activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as List<(Project, Completion, bool?)>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveProjectsStateImpl extends _ActiveProjectsState {
  const _$ActiveProjectsStateImpl(
      {required final List<(Project, Completion, bool?)> activeProjects})
      : _activeProjects = activeProjects,
        super._();

  factory _$ActiveProjectsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveProjectsStateImplFromJson(json);

  final List<(Project, Completion, bool?)> _activeProjects;
  @override
  List<(Project, Completion, bool?)> get activeProjects {
    if (_activeProjects is EqualUnmodifiableListView) return _activeProjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeProjects);
  }

  @override
  String toString() {
    return 'ActiveProjectsState(activeProjects: $activeProjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveProjectsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._activeProjects, _activeProjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activeProjects));

  /// Create a copy of ActiveProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveProjectsStateImplCopyWith<_$ActiveProjectsStateImpl> get copyWith =>
      __$$ActiveProjectsStateImplCopyWithImpl<_$ActiveProjectsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveProjectsStateImplToJson(
      this,
    );
  }
}

abstract class _ActiveProjectsState extends ActiveProjectsState {
  const factory _ActiveProjectsState(
          {required final List<(Project, Completion, bool?)> activeProjects}) =
      _$ActiveProjectsStateImpl;
  const _ActiveProjectsState._() : super._();

  factory _ActiveProjectsState.fromJson(Map<String, dynamic> json) =
      _$ActiveProjectsStateImpl.fromJson;

  @override
  List<(Project, Completion, bool?)> get activeProjects;

  /// Create a copy of ActiveProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveProjectsStateImplCopyWith<_$ActiveProjectsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectReward _$ProjectRewardFromJson(Map<String, dynamic> json) {
  return _ProjectReward.fromJson(json);
}

/// @nodoc
mixin _$ProjectReward {
  int get minXpAmount => throw _privateConstructorUsedError;
  int get maxXpAmount => throw _privateConstructorUsedError;
  int get minMoneyAmount => throw _privateConstructorUsedError;
  int get maxMoneyAmount => throw _privateConstructorUsedError;
  double get failRate => throw _privateConstructorUsedError;

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
  $Res call(
      {int minXpAmount,
      int maxXpAmount,
      int minMoneyAmount,
      int maxMoneyAmount,
      double failRate});
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
    Object? minXpAmount = null,
    Object? maxXpAmount = null,
    Object? minMoneyAmount = null,
    Object? maxMoneyAmount = null,
    Object? failRate = null,
  }) {
    return _then(_value.copyWith(
      minXpAmount: null == minXpAmount
          ? _value.minXpAmount
          : minXpAmount // ignore: cast_nullable_to_non_nullable
              as int,
      maxXpAmount: null == maxXpAmount
          ? _value.maxXpAmount
          : maxXpAmount // ignore: cast_nullable_to_non_nullable
              as int,
      minMoneyAmount: null == minMoneyAmount
          ? _value.minMoneyAmount
          : minMoneyAmount // ignore: cast_nullable_to_non_nullable
              as int,
      maxMoneyAmount: null == maxMoneyAmount
          ? _value.maxMoneyAmount
          : maxMoneyAmount // ignore: cast_nullable_to_non_nullable
              as int,
      failRate: null == failRate
          ? _value.failRate
          : failRate // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call(
      {int minXpAmount,
      int maxXpAmount,
      int minMoneyAmount,
      int maxMoneyAmount,
      double failRate});
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
    Object? minXpAmount = null,
    Object? maxXpAmount = null,
    Object? minMoneyAmount = null,
    Object? maxMoneyAmount = null,
    Object? failRate = null,
  }) {
    return _then(_$ProjectRewardImpl(
      minXpAmount: null == minXpAmount
          ? _value.minXpAmount
          : minXpAmount // ignore: cast_nullable_to_non_nullable
              as int,
      maxXpAmount: null == maxXpAmount
          ? _value.maxXpAmount
          : maxXpAmount // ignore: cast_nullable_to_non_nullable
              as int,
      minMoneyAmount: null == minMoneyAmount
          ? _value.minMoneyAmount
          : minMoneyAmount // ignore: cast_nullable_to_non_nullable
              as int,
      maxMoneyAmount: null == maxMoneyAmount
          ? _value.maxMoneyAmount
          : maxMoneyAmount // ignore: cast_nullable_to_non_nullable
              as int,
      failRate: null == failRate
          ? _value.failRate
          : failRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectRewardImpl implements _ProjectReward {
  const _$ProjectRewardImpl(
      {required this.minXpAmount,
      required this.maxXpAmount,
      required this.minMoneyAmount,
      required this.maxMoneyAmount,
      required this.failRate});

  factory _$ProjectRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectRewardImplFromJson(json);

  @override
  final int minXpAmount;
  @override
  final int maxXpAmount;
  @override
  final int minMoneyAmount;
  @override
  final int maxMoneyAmount;
  @override
  final double failRate;

  @override
  String toString() {
    return 'ProjectReward(minXpAmount: $minXpAmount, maxXpAmount: $maxXpAmount, minMoneyAmount: $minMoneyAmount, maxMoneyAmount: $maxMoneyAmount, failRate: $failRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectRewardImpl &&
            (identical(other.minXpAmount, minXpAmount) ||
                other.minXpAmount == minXpAmount) &&
            (identical(other.maxXpAmount, maxXpAmount) ||
                other.maxXpAmount == maxXpAmount) &&
            (identical(other.minMoneyAmount, minMoneyAmount) ||
                other.minMoneyAmount == minMoneyAmount) &&
            (identical(other.maxMoneyAmount, maxMoneyAmount) ||
                other.maxMoneyAmount == maxMoneyAmount) &&
            (identical(other.failRate, failRate) ||
                other.failRate == failRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minXpAmount, maxXpAmount,
      minMoneyAmount, maxMoneyAmount, failRate);

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
      {required final int minXpAmount,
      required final int maxXpAmount,
      required final int minMoneyAmount,
      required final int maxMoneyAmount,
      required final double failRate}) = _$ProjectRewardImpl;

  factory _ProjectReward.fromJson(Map<String, dynamic> json) =
      _$ProjectRewardImpl.fromJson;

  @override
  int get minXpAmount;
  @override
  int get maxXpAmount;
  @override
  int get minMoneyAmount;
  @override
  int get maxMoneyAmount;
  @override
  double get failRate;

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
  double get rate => throw _privateConstructorUsedError;

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
  $Res call({double baseAmount, double completedAmount, double rate});
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
    Object? rate = null,
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
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call({double baseAmount, double completedAmount, double rate});
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
    Object? rate = null,
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
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionImpl extends _Completion {
  const _$CompletionImpl(
      {required this.baseAmount,
      required this.completedAmount,
      required this.rate})
      : super._();

  factory _$CompletionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionImplFromJson(json);

  @override
  final double baseAmount;
  @override
  final double completedAmount;
  @override
  final double rate;

  @override
  String toString() {
    return 'Completion(baseAmount: $baseAmount, completedAmount: $completedAmount, rate: $rate)';
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
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, baseAmount, completedAmount, rate);

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
      required final double rate}) = _$CompletionImpl;
  const _Completion._() : super._();

  factory _Completion.fromJson(Map<String, dynamic> json) =
      _$CompletionImpl.fromJson;

  @override
  double get baseAmount;
  @override
  double get completedAmount;
  @override
  double get rate;

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletionImplCopyWith<_$CompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
