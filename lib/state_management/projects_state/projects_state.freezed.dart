// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectsState _$ProjectsStateFromJson(Map<String, dynamic> json) {
  return _ProjectsState.fromJson(json);
}

/// @nodoc
mixin _$ProjectsState {
  /// Serializes this ProjectsState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(
          ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res, ProjectsState>;
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
}

/// @nodoc
abstract class _$$ProjectsStateImplCopyWith<$Res> {
  factory _$$ProjectsStateImplCopyWith(
          _$ProjectsStateImpl value, $Res Function(_$ProjectsStateImpl) then) =
      __$$ProjectsStateImplCopyWithImpl<$Res>;
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
}

/// @nodoc
@JsonSerializable()
class _$ProjectsStateImpl implements _ProjectsState {
  const _$ProjectsStateImpl();

  factory _$ProjectsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectsStateImplFromJson(json);

  @override
  String toString() {
    return 'ProjectsState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectsStateImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectsStateImplToJson(
      this,
    );
  }
}

abstract class _ProjectsState implements ProjectsState {
  const factory _ProjectsState() = _$ProjectsStateImpl;

  factory _ProjectsState.fromJson(Map<String, dynamic> json) =
      _$ProjectsStateImpl.fromJson;
}
