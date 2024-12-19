// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  Project get project => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) projectCompleted,
    required TResult Function(Project project) projectStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? projectCompleted,
    TResult? Function(Project project)? projectStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? projectCompleted,
    TResult Function(Project project)? projectStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(ProjectStarted value) projectStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(ProjectStarted value)? projectStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(ProjectStarted value)? projectStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameEventCopyWith<GameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
  @useResult
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_value.copyWith(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ) as $Val);
  }

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectCompletedImplCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$ProjectCompletedImplCopyWith(_$ProjectCompletedImpl value,
          $Res Function(_$ProjectCompletedImpl) then) =
      __$$ProjectCompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Project project});

  @override
  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$ProjectCompletedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ProjectCompletedImpl>
    implements _$$ProjectCompletedImplCopyWith<$Res> {
  __$$ProjectCompletedImplCopyWithImpl(_$ProjectCompletedImpl _value,
      $Res Function(_$ProjectCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$ProjectCompletedImpl(
      null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }
}

/// @nodoc

class _$ProjectCompletedImpl implements ProjectCompleted {
  const _$ProjectCompletedImpl(this.project);

  @override
  final Project project;

  @override
  String toString() {
    return 'GameEvent.projectCompleted(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCompletedImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectCompletedImplCopyWith<_$ProjectCompletedImpl> get copyWith =>
      __$$ProjectCompletedImplCopyWithImpl<_$ProjectCompletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) projectCompleted,
    required TResult Function(Project project) projectStarted,
  }) {
    return projectCompleted(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? projectCompleted,
    TResult? Function(Project project)? projectStarted,
  }) {
    return projectCompleted?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? projectCompleted,
    TResult Function(Project project)? projectStarted,
    required TResult orElse(),
  }) {
    if (projectCompleted != null) {
      return projectCompleted(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(ProjectStarted value) projectStarted,
  }) {
    return projectCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(ProjectStarted value)? projectStarted,
  }) {
    return projectCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(ProjectStarted value)? projectStarted,
    required TResult orElse(),
  }) {
    if (projectCompleted != null) {
      return projectCompleted(this);
    }
    return orElse();
  }
}

abstract class ProjectCompleted implements GameEvent {
  const factory ProjectCompleted(final Project project) =
      _$ProjectCompletedImpl;

  @override
  Project get project;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCompletedImplCopyWith<_$ProjectCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectStartedImplCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$ProjectStartedImplCopyWith(_$ProjectStartedImpl value,
          $Res Function(_$ProjectStartedImpl) then) =
      __$$ProjectStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Project project});

  @override
  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$ProjectStartedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ProjectStartedImpl>
    implements _$$ProjectStartedImplCopyWith<$Res> {
  __$$ProjectStartedImplCopyWithImpl(
      _$ProjectStartedImpl _value, $Res Function(_$ProjectStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$ProjectStartedImpl(
      null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }
}

/// @nodoc

class _$ProjectStartedImpl implements ProjectStarted {
  const _$ProjectStartedImpl(this.project);

  @override
  final Project project;

  @override
  String toString() {
    return 'GameEvent.projectStarted(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStartedImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStartedImplCopyWith<_$ProjectStartedImpl> get copyWith =>
      __$$ProjectStartedImplCopyWithImpl<_$ProjectStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) projectCompleted,
    required TResult Function(Project project) projectStarted,
  }) {
    return projectStarted(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? projectCompleted,
    TResult? Function(Project project)? projectStarted,
  }) {
    return projectStarted?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? projectCompleted,
    TResult Function(Project project)? projectStarted,
    required TResult orElse(),
  }) {
    if (projectStarted != null) {
      return projectStarted(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(ProjectStarted value) projectStarted,
  }) {
    return projectStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(ProjectStarted value)? projectStarted,
  }) {
    return projectStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(ProjectStarted value)? projectStarted,
    required TResult orElse(),
  }) {
    if (projectStarted != null) {
      return projectStarted(this);
    }
    return orElse();
  }
}

abstract class ProjectStarted implements GameEvent {
  const factory ProjectStarted(final Project project) = _$ProjectStartedImpl;

  @override
  Project get project;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStartedImplCopyWith<_$ProjectStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
