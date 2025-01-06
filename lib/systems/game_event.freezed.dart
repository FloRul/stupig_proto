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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
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
}

/// @nodoc
abstract class _$$ProjectCompletedImplCopyWith<$Res> {
  factory _$$ProjectCompletedImplCopyWith(_$ProjectCompletedImpl value,
          $Res Function(_$ProjectCompletedImpl) then) =
      __$$ProjectCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project, String? tag});

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
    Object? tag = freezed,
  }) {
    return _then(_$ProjectCompletedImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$ProjectCompletedImpl implements ProjectCompleted {
  const _$ProjectCompletedImpl({required this.project, this.tag});

  @override
  final Project project;
  @override
  final String? tag;

  @override
  String toString() {
    return 'GameEvent.projectCompleted(project: $project, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCompletedImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project, tag);

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
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return projectCompleted(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return projectCompleted?.call(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (projectCompleted != null) {
      return projectCompleted(project, tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return projectCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return projectCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (projectCompleted != null) {
      return projectCompleted(this);
    }
    return orElse();
  }
}

abstract class ProjectCompleted implements GameEvent {
  const factory ProjectCompleted(
      {required final Project project,
      final String? tag}) = _$ProjectCompletedImpl;

  Project get project;
  String? get tag;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCompletedImplCopyWith<_$ProjectCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RewardEarnedImplCopyWith<$Res> {
  factory _$$RewardEarnedImplCopyWith(
          _$RewardEarnedImpl value, $Res Function(_$RewardEarnedImpl) then) =
      __$$RewardEarnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectReward reward});

  $ProjectRewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$$RewardEarnedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$RewardEarnedImpl>
    implements _$$RewardEarnedImplCopyWith<$Res> {
  __$$RewardEarnedImplCopyWithImpl(
      _$RewardEarnedImpl _value, $Res Function(_$RewardEarnedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reward = null,
  }) {
    return _then(_$RewardEarnedImpl(
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ProjectReward,
    ));
  }

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectRewardCopyWith<$Res> get reward {
    return $ProjectRewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc

class _$RewardEarnedImpl implements RewardEarned {
  const _$RewardEarnedImpl({required this.reward});

  @override
  final ProjectReward reward;

  @override
  String toString() {
    return 'GameEvent.rewardEarned(reward: $reward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardEarnedImpl &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reward);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardEarnedImplCopyWith<_$RewardEarnedImpl> get copyWith =>
      __$$RewardEarnedImplCopyWithImpl<_$RewardEarnedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return rewardEarned(reward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return rewardEarned?.call(reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (rewardEarned != null) {
      return rewardEarned(reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return rewardEarned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return rewardEarned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (rewardEarned != null) {
      return rewardEarned(this);
    }
    return orElse();
  }
}

abstract class RewardEarned implements GameEvent {
  const factory RewardEarned({required final ProjectReward reward}) =
      _$RewardEarnedImpl;

  ProjectReward get reward;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardEarnedImplCopyWith<_$RewardEarnedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectStartedImplCopyWith<$Res> {
  factory _$$ProjectStartedImplCopyWith(_$ProjectStartedImpl value,
          $Res Function(_$ProjectStartedImpl) then) =
      __$$ProjectStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project, String? tag});

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
    Object? tag = freezed,
  }) {
    return _then(_$ProjectStartedImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$ProjectStartedImpl implements ProjectStarted {
  const _$ProjectStartedImpl({required this.project, this.tag});

  @override
  final Project project;
  @override
  final String? tag;

  @override
  String toString() {
    return 'GameEvent.projectStarted(project: $project, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStartedImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project, tag);

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
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return projectStarted(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return projectStarted?.call(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (projectStarted != null) {
      return projectStarted(project, tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return projectStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return projectStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (projectStarted != null) {
      return projectStarted(this);
    }
    return orElse();
  }
}

abstract class ProjectStarted implements GameEvent {
  const factory ProjectStarted(
      {required final Project project,
      final String? tag}) = _$ProjectStartedImpl;

  Project get project;
  String? get tag;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStartedImplCopyWith<_$ProjectStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LevelUpImplCopyWith<$Res> {
  factory _$$LevelUpImplCopyWith(
          _$LevelUpImpl value, $Res Function(_$LevelUpImpl) then) =
      __$$LevelUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? tag});
}

/// @nodoc
class __$$LevelUpImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$LevelUpImpl>
    implements _$$LevelUpImplCopyWith<$Res> {
  __$$LevelUpImplCopyWithImpl(
      _$LevelUpImpl _value, $Res Function(_$LevelUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_$LevelUpImpl(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LevelUpImpl implements LevelUp {
  const _$LevelUpImpl({this.tag});

  @override
  final String? tag;

  @override
  String toString() {
    return 'GameEvent.levelUp(tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelUpImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelUpImplCopyWith<_$LevelUpImpl> get copyWith =>
      __$$LevelUpImplCopyWithImpl<_$LevelUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return levelUp(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return levelUp?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (levelUp != null) {
      return levelUp(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return levelUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return levelUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (levelUp != null) {
      return levelUp(this);
    }
    return orElse();
  }
}

abstract class LevelUp implements GameEvent {
  const factory LevelUp({final String? tag}) = _$LevelUpImpl;

  String? get tag;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LevelUpImplCopyWith<_$LevelUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseImplCopyWith<$Res> {
  factory _$$PurchaseImplCopyWith(
          _$PurchaseImpl value, $Res Function(_$PurchaseImpl) then) =
      __$$PurchaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseType type});
}

/// @nodoc
class __$$PurchaseImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$PurchaseImpl>
    implements _$$PurchaseImplCopyWith<$Res> {
  __$$PurchaseImplCopyWithImpl(
      _$PurchaseImpl _value, $Res Function(_$PurchaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$PurchaseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PurchaseType,
    ));
  }
}

/// @nodoc

class _$PurchaseImpl implements Purchase {
  const _$PurchaseImpl({required this.type});

  @override
  final PurchaseType type;

  @override
  String toString() {
    return 'GameEvent.purchase(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseImplCopyWith<_$PurchaseImpl> get copyWith =>
      __$$PurchaseImplCopyWithImpl<_$PurchaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return purchase(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return purchase?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return purchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return purchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(this);
    }
    return orElse();
  }
}

abstract class Purchase implements GameEvent {
  const factory Purchase({required final PurchaseType type}) = _$PurchaseImpl;

  PurchaseType get type;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseImplCopyWith<_$PurchaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveGameImplCopyWith<$Res> {
  factory _$$SaveGameImplCopyWith(
          _$SaveGameImpl value, $Res Function(_$SaveGameImpl) then) =
      __$$SaveGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SaveGameImpl>
    implements _$$SaveGameImplCopyWith<$Res> {
  __$$SaveGameImplCopyWithImpl(
      _$SaveGameImpl _value, $Res Function(_$SaveGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveGameImpl implements SaveGame {
  const _$SaveGameImpl();

  @override
  String toString() {
    return 'GameEvent.saveGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return saveGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return saveGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (saveGame != null) {
      return saveGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return saveGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return saveGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (saveGame != null) {
      return saveGame(this);
    }
    return orElse();
  }
}

abstract class SaveGame implements GameEvent {
  const factory SaveGame() = _$SaveGameImpl;
}

/// @nodoc
abstract class _$$LoadGameImplCopyWith<$Res> {
  factory _$$LoadGameImplCopyWith(
          _$LoadGameImpl value, $Res Function(_$LoadGameImpl) then) =
      __$$LoadGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$LoadGameImpl>
    implements _$$LoadGameImplCopyWith<$Res> {
  __$$LoadGameImplCopyWithImpl(
      _$LoadGameImpl _value, $Res Function(_$LoadGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadGameImpl implements LoadGame {
  const _$LoadGameImpl();

  @override
  String toString() {
    return 'GameEvent.loadGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return loadGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return loadGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (loadGame != null) {
      return loadGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return loadGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return loadGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (loadGame != null) {
      return loadGame(this);
    }
    return orElse();
  }
}

abstract class LoadGame implements GameEvent {
  const factory LoadGame() = _$LoadGameImpl;
}

/// @nodoc
abstract class _$$UnlockFeatureImplCopyWith<$Res> {
  factory _$$UnlockFeatureImplCopyWith(
          _$UnlockFeatureImpl value, $Res Function(_$UnlockFeatureImpl) then) =
      __$$UnlockFeatureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Feature feature});
}

/// @nodoc
class __$$UnlockFeatureImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$UnlockFeatureImpl>
    implements _$$UnlockFeatureImplCopyWith<$Res> {
  __$$UnlockFeatureImplCopyWithImpl(
      _$UnlockFeatureImpl _value, $Res Function(_$UnlockFeatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feature = null,
  }) {
    return _then(_$UnlockFeatureImpl(
      feature: null == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature,
    ));
  }
}

/// @nodoc

class _$UnlockFeatureImpl implements UnlockFeature {
  const _$UnlockFeatureImpl({required this.feature});

  @override
  final Feature feature;

  @override
  String toString() {
    return 'GameEvent.unlockFeature(feature: $feature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnlockFeatureImpl &&
            (identical(other.feature, feature) || other.feature == feature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feature);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnlockFeatureImplCopyWith<_$UnlockFeatureImpl> get copyWith =>
      __$$UnlockFeatureImplCopyWithImpl<_$UnlockFeatureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(ProjectReward reward) rewardEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
    required TResult Function() saveGame,
    required TResult Function() loadGame,
    required TResult Function(Feature feature) unlockFeature,
  }) {
    return unlockFeature(feature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(ProjectReward reward)? rewardEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
    TResult? Function()? saveGame,
    TResult? Function()? loadGame,
    TResult? Function(Feature feature)? unlockFeature,
  }) {
    return unlockFeature?.call(feature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(ProjectReward reward)? rewardEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    TResult Function()? saveGame,
    TResult Function()? loadGame,
    TResult Function(Feature feature)? unlockFeature,
    required TResult orElse(),
  }) {
    if (unlockFeature != null) {
      return unlockFeature(feature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(RewardEarned value) rewardEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
    required TResult Function(SaveGame value) saveGame,
    required TResult Function(LoadGame value) loadGame,
    required TResult Function(UnlockFeature value) unlockFeature,
  }) {
    return unlockFeature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(RewardEarned value)? rewardEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
    TResult? Function(SaveGame value)? saveGame,
    TResult? Function(LoadGame value)? loadGame,
    TResult? Function(UnlockFeature value)? unlockFeature,
  }) {
    return unlockFeature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(RewardEarned value)? rewardEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    TResult Function(SaveGame value)? saveGame,
    TResult Function(LoadGame value)? loadGame,
    TResult Function(UnlockFeature value)? unlockFeature,
    required TResult orElse(),
  }) {
    if (unlockFeature != null) {
      return unlockFeature(this);
    }
    return orElse();
  }
}

abstract class UnlockFeature implements GameEvent {
  const factory UnlockFeature({required final Feature feature}) =
      _$UnlockFeatureImpl;

  Feature get feature;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnlockFeatureImplCopyWith<_$UnlockFeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
