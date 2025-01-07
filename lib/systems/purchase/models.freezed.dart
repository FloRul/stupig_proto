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

Upgrade _$UpgradeFromJson(Map<String, dynamic> json) {
  return _Upgrade.fromJson(json);
}

/// @nodoc
mixin _$Upgrade {
  dynamic get required => throw _privateConstructorUsedError;

  /// Serializes this Upgrade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpgradeCopyWith<Upgrade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeCopyWith<$Res> {
  factory $UpgradeCopyWith(Upgrade value, $Res Function(Upgrade) then) =
      _$UpgradeCopyWithImpl<$Res, Upgrade>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class _$UpgradeCopyWithImpl<$Res, $Val extends Upgrade>
    implements $UpgradeCopyWith<$Res> {
  _$UpgradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpgradeImplCopyWith<$Res> implements $UpgradeCopyWith<$Res> {
  factory _$$UpgradeImplCopyWith(
          _$UpgradeImpl value, $Res Function(_$UpgradeImpl) then) =
      __$$UpgradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$UpgradeImplCopyWithImpl<$Res>
    extends _$UpgradeCopyWithImpl<$Res, _$UpgradeImpl>
    implements _$$UpgradeImplCopyWith<$Res> {
  __$$UpgradeImplCopyWithImpl(
      _$UpgradeImpl _value, $Res Function(_$UpgradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$UpgradeImpl(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpgradeImpl implements _Upgrade {
  const _$UpgradeImpl({this.required});

  factory _$UpgradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpgradeImplFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'Upgrade(required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpgradeImpl &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpgradeImplCopyWith<_$UpgradeImpl> get copyWith =>
      __$$UpgradeImplCopyWithImpl<_$UpgradeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpgradeImplToJson(
      this,
    );
  }
}

abstract class _Upgrade implements Upgrade {
  const factory _Upgrade({final dynamic required}) = _$UpgradeImpl;

  factory _Upgrade.fromJson(Map<String, dynamic> json) = _$UpgradeImpl.fromJson;

  @override
  dynamic get required;

  /// Create a copy of Upgrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpgradeImplCopyWith<_$UpgradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
