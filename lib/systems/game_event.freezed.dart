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
    required TResult Function(int amount) xpEarned,
    required TResult Function(int amount) moneyEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(int amount)? xpEarned,
    TResult? Function(int amount)? moneyEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(int amount)? xpEarned,
    TResult Function(int amount)? moneyEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(XpEarned value) xpEarned,
    required TResult Function(MoneyEarned value) moneyEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(XpEarned value)? xpEarned,
    TResult? Function(MoneyEarned value)? moneyEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(XpEarned value)? xpEarned,
    TResult Function(MoneyEarned value)? moneyEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
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
    required TResult Function(int amount) xpEarned,
    required TResult Function(int amount) moneyEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
  }) {
    return projectCompleted(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(int amount)? xpEarned,
    TResult? Function(int amount)? moneyEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
  }) {
    return projectCompleted?.call(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(int amount)? xpEarned,
    TResult Function(int amount)? moneyEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
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
    required TResult Function(XpEarned value) xpEarned,
    required TResult Function(MoneyEarned value) moneyEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
  }) {
    return projectCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(XpEarned value)? xpEarned,
    TResult? Function(MoneyEarned value)? moneyEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
  }) {
    return projectCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(XpEarned value)? xpEarned,
    TResult Function(MoneyEarned value)? moneyEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
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
abstract class _$$XpEarnedImplCopyWith<$Res> {
  factory _$$XpEarnedImplCopyWith(
          _$XpEarnedImpl value, $Res Function(_$XpEarnedImpl) then) =
      __$$XpEarnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$XpEarnedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$XpEarnedImpl>
    implements _$$XpEarnedImplCopyWith<$Res> {
  __$$XpEarnedImplCopyWithImpl(
      _$XpEarnedImpl _value, $Res Function(_$XpEarnedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$XpEarnedImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$XpEarnedImpl implements XpEarned {
  const _$XpEarnedImpl({required this.amount});

  @override
  final int amount;

  @override
  String toString() {
    return 'GameEvent.xpEarned(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XpEarnedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XpEarnedImplCopyWith<_$XpEarnedImpl> get copyWith =>
      __$$XpEarnedImplCopyWithImpl<_$XpEarnedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(int amount) xpEarned,
    required TResult Function(int amount) moneyEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
  }) {
    return xpEarned(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(int amount)? xpEarned,
    TResult? Function(int amount)? moneyEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
  }) {
    return xpEarned?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(int amount)? xpEarned,
    TResult Function(int amount)? moneyEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    required TResult orElse(),
  }) {
    if (xpEarned != null) {
      return xpEarned(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(XpEarned value) xpEarned,
    required TResult Function(MoneyEarned value) moneyEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
  }) {
    return xpEarned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(XpEarned value)? xpEarned,
    TResult? Function(MoneyEarned value)? moneyEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
  }) {
    return xpEarned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(XpEarned value)? xpEarned,
    TResult Function(MoneyEarned value)? moneyEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (xpEarned != null) {
      return xpEarned(this);
    }
    return orElse();
  }
}

abstract class XpEarned implements GameEvent {
  const factory XpEarned({required final int amount}) = _$XpEarnedImpl;

  int get amount;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XpEarnedImplCopyWith<_$XpEarnedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoneyEarnedImplCopyWith<$Res> {
  factory _$$MoneyEarnedImplCopyWith(
          _$MoneyEarnedImpl value, $Res Function(_$MoneyEarnedImpl) then) =
      __$$MoneyEarnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$MoneyEarnedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$MoneyEarnedImpl>
    implements _$$MoneyEarnedImplCopyWith<$Res> {
  __$$MoneyEarnedImplCopyWithImpl(
      _$MoneyEarnedImpl _value, $Res Function(_$MoneyEarnedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$MoneyEarnedImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoneyEarnedImpl implements MoneyEarned {
  const _$MoneyEarnedImpl({required this.amount});

  @override
  final int amount;

  @override
  String toString() {
    return 'GameEvent.moneyEarned(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyEarnedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyEarnedImplCopyWith<_$MoneyEarnedImpl> get copyWith =>
      __$$MoneyEarnedImplCopyWithImpl<_$MoneyEarnedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project, String? tag) projectCompleted,
    required TResult Function(int amount) xpEarned,
    required TResult Function(int amount) moneyEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
  }) {
    return moneyEarned(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(int amount)? xpEarned,
    TResult? Function(int amount)? moneyEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
  }) {
    return moneyEarned?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(int amount)? xpEarned,
    TResult Function(int amount)? moneyEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
    required TResult orElse(),
  }) {
    if (moneyEarned != null) {
      return moneyEarned(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectCompleted value) projectCompleted,
    required TResult Function(XpEarned value) xpEarned,
    required TResult Function(MoneyEarned value) moneyEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
  }) {
    return moneyEarned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(XpEarned value)? xpEarned,
    TResult? Function(MoneyEarned value)? moneyEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
  }) {
    return moneyEarned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(XpEarned value)? xpEarned,
    TResult Function(MoneyEarned value)? moneyEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (moneyEarned != null) {
      return moneyEarned(this);
    }
    return orElse();
  }
}

abstract class MoneyEarned implements GameEvent {
  const factory MoneyEarned({required final int amount}) = _$MoneyEarnedImpl;

  int get amount;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyEarnedImplCopyWith<_$MoneyEarnedImpl> get copyWith =>
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
    required TResult Function(int amount) xpEarned,
    required TResult Function(int amount) moneyEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
  }) {
    return projectStarted(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(int amount)? xpEarned,
    TResult? Function(int amount)? moneyEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
  }) {
    return projectStarted?.call(project, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(int amount)? xpEarned,
    TResult Function(int amount)? moneyEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
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
    required TResult Function(XpEarned value) xpEarned,
    required TResult Function(MoneyEarned value) moneyEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
  }) {
    return projectStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(XpEarned value)? xpEarned,
    TResult? Function(MoneyEarned value)? moneyEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
  }) {
    return projectStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(XpEarned value)? xpEarned,
    TResult Function(MoneyEarned value)? moneyEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
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
    required TResult Function(int amount) xpEarned,
    required TResult Function(int amount) moneyEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
  }) {
    return levelUp(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(int amount)? xpEarned,
    TResult? Function(int amount)? moneyEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
  }) {
    return levelUp?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(int amount)? xpEarned,
    TResult Function(int amount)? moneyEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
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
    required TResult Function(XpEarned value) xpEarned,
    required TResult Function(MoneyEarned value) moneyEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
  }) {
    return levelUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(XpEarned value)? xpEarned,
    TResult? Function(MoneyEarned value)? moneyEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
  }) {
    return levelUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(XpEarned value)? xpEarned,
    TResult Function(MoneyEarned value)? moneyEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
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
    required TResult Function(int amount) xpEarned,
    required TResult Function(int amount) moneyEarned,
    required TResult Function(Project project, String? tag) projectStarted,
    required TResult Function(String? tag) levelUp,
    required TResult Function(PurchaseType type) purchase,
  }) {
    return purchase(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project, String? tag)? projectCompleted,
    TResult? Function(int amount)? xpEarned,
    TResult? Function(int amount)? moneyEarned,
    TResult? Function(Project project, String? tag)? projectStarted,
    TResult? Function(String? tag)? levelUp,
    TResult? Function(PurchaseType type)? purchase,
  }) {
    return purchase?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project, String? tag)? projectCompleted,
    TResult Function(int amount)? xpEarned,
    TResult Function(int amount)? moneyEarned,
    TResult Function(Project project, String? tag)? projectStarted,
    TResult Function(String? tag)? levelUp,
    TResult Function(PurchaseType type)? purchase,
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
    required TResult Function(XpEarned value) xpEarned,
    required TResult Function(MoneyEarned value) moneyEarned,
    required TResult Function(ProjectStarted value) projectStarted,
    required TResult Function(LevelUp value) levelUp,
    required TResult Function(Purchase value) purchase,
  }) {
    return purchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectCompleted value)? projectCompleted,
    TResult? Function(XpEarned value)? xpEarned,
    TResult? Function(MoneyEarned value)? moneyEarned,
    TResult? Function(ProjectStarted value)? projectStarted,
    TResult? Function(LevelUp value)? levelUp,
    TResult? Function(Purchase value)? purchase,
  }) {
    return purchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectCompleted value)? projectCompleted,
    TResult Function(XpEarned value)? xpEarned,
    TResult Function(MoneyEarned value)? moneyEarned,
    TResult Function(ProjectStarted value)? projectStarted,
    TResult Function(LevelUp value)? levelUp,
    TResult Function(Purchase value)? purchase,
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
