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
  $Res call({String id, String name, String description});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String description});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.id, required this.name, required this.description});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

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
      required final String description}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectsState _$ProjectsStateFromJson(Map<String, dynamic> json) {
  return _ProjectsState.fromJson(json);
}

/// @nodoc
mixin _$ProjectsState {
  List<ActiveProjectState> get activeProjects =>
      throw _privateConstructorUsedError;
  List<Project> get completedProjects => throw _privateConstructorUsedError;

  /// Serializes this ProjectsState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectsStateCopyWith<ProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(
          ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res, ProjectsState>;
  @useResult
  $Res call(
      {List<ActiveProjectState> activeProjects,
      List<Project> completedProjects});
}

/// @nodoc
class _$ProjectsStateCopyWithImpl<$Res, $Val extends ProjectsState>
    implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeProjects = null,
    Object? completedProjects = null,
  }) {
    return _then(_value.copyWith(
      activeProjects: null == activeProjects
          ? _value.activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as List<ActiveProjectState>,
      completedProjects: null == completedProjects
          ? _value.completedProjects
          : completedProjects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectsStateImplCopyWith<$Res>
    implements $ProjectsStateCopyWith<$Res> {
  factory _$$ProjectsStateImplCopyWith(
          _$ProjectsStateImpl value, $Res Function(_$ProjectsStateImpl) then) =
      __$$ProjectsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveProjectState> activeProjects,
      List<Project> completedProjects});
}

/// @nodoc
class __$$ProjectsStateImplCopyWithImpl<$Res>
    extends _$ProjectsStateCopyWithImpl<$Res, _$ProjectsStateImpl>
    implements _$$ProjectsStateImplCopyWith<$Res> {
  __$$ProjectsStateImplCopyWithImpl(
      _$ProjectsStateImpl _value, $Res Function(_$ProjectsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeProjects = null,
    Object? completedProjects = null,
  }) {
    return _then(_$ProjectsStateImpl(
      activeProjects: null == activeProjects
          ? _value._activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as List<ActiveProjectState>,
      completedProjects: null == completedProjects
          ? _value._completedProjects
          : completedProjects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectsStateImpl implements _ProjectsState {
  const _$ProjectsStateImpl(
      {required final List<ActiveProjectState> activeProjects,
      required final List<Project> completedProjects})
      : _activeProjects = activeProjects,
        _completedProjects = completedProjects;

  factory _$ProjectsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectsStateImplFromJson(json);

  final List<ActiveProjectState> _activeProjects;
  @override
  List<ActiveProjectState> get activeProjects {
    if (_activeProjects is EqualUnmodifiableListView) return _activeProjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeProjects);
  }

  final List<Project> _completedProjects;
  @override
  List<Project> get completedProjects {
    if (_completedProjects is EqualUnmodifiableListView)
      return _completedProjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedProjects);
  }

  @override
  String toString() {
    return 'ProjectsState(activeProjects: $activeProjects, completedProjects: $completedProjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._activeProjects, _activeProjects) &&
            const DeepCollectionEquality()
                .equals(other._completedProjects, _completedProjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeProjects),
      const DeepCollectionEquality().hash(_completedProjects));

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsStateImplCopyWith<_$ProjectsStateImpl> get copyWith =>
      __$$ProjectsStateImplCopyWithImpl<_$ProjectsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectsStateImplToJson(
      this,
    );
  }
}

abstract class _ProjectsState implements ProjectsState {
  const factory _ProjectsState(
      {required final List<ActiveProjectState> activeProjects,
      required final List<Project> completedProjects}) = _$ProjectsStateImpl;

  factory _ProjectsState.fromJson(Map<String, dynamic> json) =
      _$ProjectsStateImpl.fromJson;

  @override
  List<ActiveProjectState> get activeProjects;
  @override
  List<Project> get completedProjects;

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectsStateImplCopyWith<_$ProjectsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
