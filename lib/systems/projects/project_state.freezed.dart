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
  $Res call({Project project, Completion completion});

  $ProjectCopyWith<$Res> get project;
  $CompletionCopyWith<$Res> get completion;
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
}

/// @nodoc
abstract class _$$ProjectStateImplCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$$ProjectStateImplCopyWith(
          _$ProjectStateImpl value, $Res Function(_$ProjectStateImpl) then) =
      __$$ProjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Project project, Completion completion});

  @override
  $ProjectCopyWith<$Res> get project;
  @override
  $CompletionCopyWith<$Res> get completion;
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectStateImpl implements _ProjectState {
  const _$ProjectStateImpl({required this.project, required this.completion});

  factory _$ProjectStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectStateImplFromJson(json);

  @override
  final Project project;
  @override
  final Completion completion;

  @override
  String toString() {
    return 'ProjectState(project: $project, completion: $completion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStateImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.completion, completion) ||
                other.completion == completion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, project, completion);

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
      required final Completion completion}) = _$ProjectStateImpl;

  factory _ProjectState.fromJson(Map<String, dynamic> json) =
      _$ProjectStateImpl.fromJson;

  @override
  Project get project;
  @override
  Completion get completion;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
