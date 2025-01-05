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

FeaturesState _$FeaturesStateFromJson(Map<String, dynamic> json) {
  return _FeaturesState.fromJson(json);
}

/// @nodoc
mixin _$FeaturesState {
  Map<Feature, bool> get features => throw _privateConstructorUsedError;

  /// Serializes this FeaturesState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeaturesStateCopyWith<FeaturesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturesStateCopyWith<$Res> {
  factory $FeaturesStateCopyWith(
          FeaturesState value, $Res Function(FeaturesState) then) =
      _$FeaturesStateCopyWithImpl<$Res, FeaturesState>;
  @useResult
  $Res call({Map<Feature, bool> features});
}

/// @nodoc
class _$FeaturesStateCopyWithImpl<$Res, $Val extends FeaturesState>
    implements $FeaturesStateCopyWith<$Res> {
  _$FeaturesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<Feature, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturesStateImplCopyWith<$Res>
    implements $FeaturesStateCopyWith<$Res> {
  factory _$$FeaturesStateImplCopyWith(
          _$FeaturesStateImpl value, $Res Function(_$FeaturesStateImpl) then) =
      __$$FeaturesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<Feature, bool> features});
}

/// @nodoc
class __$$FeaturesStateImplCopyWithImpl<$Res>
    extends _$FeaturesStateCopyWithImpl<$Res, _$FeaturesStateImpl>
    implements _$$FeaturesStateImplCopyWith<$Res> {
  __$$FeaturesStateImplCopyWithImpl(
      _$FeaturesStateImpl _value, $Res Function(_$FeaturesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_$FeaturesStateImpl(
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<Feature, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturesStateImpl implements _FeaturesState {
  const _$FeaturesStateImpl({required final Map<Feature, bool> features})
      : _features = features;

  factory _$FeaturesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturesStateImplFromJson(json);

  final Map<Feature, bool> _features;
  @override
  Map<Feature, bool> get features {
    if (_features is EqualUnmodifiableMapView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_features);
  }

  @override
  String toString() {
    return 'FeaturesState(features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturesStateImpl &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_features));

  /// Create a copy of FeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturesStateImplCopyWith<_$FeaturesStateImpl> get copyWith =>
      __$$FeaturesStateImplCopyWithImpl<_$FeaturesStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturesStateImplToJson(
      this,
    );
  }
}

abstract class _FeaturesState implements FeaturesState {
  const factory _FeaturesState({required final Map<Feature, bool> features}) =
      _$FeaturesStateImpl;

  factory _FeaturesState.fromJson(Map<String, dynamic> json) =
      _$FeaturesStateImpl.fromJson;

  @override
  Map<Feature, bool> get features;

  /// Create a copy of FeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturesStateImplCopyWith<_$FeaturesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
