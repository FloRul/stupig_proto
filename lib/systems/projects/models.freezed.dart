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
