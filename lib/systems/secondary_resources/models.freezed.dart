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

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'multiplied':
      return Multiplied.fromJson(json);
    case 'incremented':
      return Incremented.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Resource',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Resource {
  num get baseValue => throw _privateConstructorUsedError;
  int get baseCost => throw _privateConstructorUsedError;
  double get costMultiplier => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double baseValue, int baseCost,
            double valueMultiplier, double costMultiplier, int level)
        multiplied,
    required TResult Function(int baseValue, int baseCost,
            int valueIncrementStep, double costMultiplier, int level)
        incremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double baseValue, int baseCost, double valueMultiplier,
            double costMultiplier, int level)?
        multiplied,
    TResult? Function(int baseValue, int baseCost, int valueIncrementStep,
            double costMultiplier, int level)?
        incremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double baseValue, int baseCost, double valueMultiplier,
            double costMultiplier, int level)?
        multiplied,
    TResult Function(int baseValue, int baseCost, int valueIncrementStep,
            double costMultiplier, int level)?
        incremented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Multiplied value) multiplied,
    required TResult Function(Incremented value) incremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Multiplied value)? multiplied,
    TResult? Function(Incremented value)? incremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Multiplied value)? multiplied,
    TResult Function(Incremented value)? incremented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Resource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call({int baseCost, double costMultiplier, int level});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCost = null,
    Object? costMultiplier = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      baseCost: null == baseCost
          ? _value.baseCost
          : baseCost // ignore: cast_nullable_to_non_nullable
              as int,
      costMultiplier: null == costMultiplier
          ? _value.costMultiplier
          : costMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultipliedImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$MultipliedImplCopyWith(
          _$MultipliedImpl value, $Res Function(_$MultipliedImpl) then) =
      __$$MultipliedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double baseValue,
      int baseCost,
      double valueMultiplier,
      double costMultiplier,
      int level});
}

/// @nodoc
class __$$MultipliedImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$MultipliedImpl>
    implements _$$MultipliedImplCopyWith<$Res> {
  __$$MultipliedImplCopyWithImpl(
      _$MultipliedImpl _value, $Res Function(_$MultipliedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseValue = null,
    Object? baseCost = null,
    Object? valueMultiplier = null,
    Object? costMultiplier = null,
    Object? level = null,
  }) {
    return _then(_$MultipliedImpl(
      baseValue: null == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as double,
      baseCost: null == baseCost
          ? _value.baseCost
          : baseCost // ignore: cast_nullable_to_non_nullable
              as int,
      valueMultiplier: null == valueMultiplier
          ? _value.valueMultiplier
          : valueMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      costMultiplier: null == costMultiplier
          ? _value.costMultiplier
          : costMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultipliedImpl extends Multiplied {
  const _$MultipliedImpl(
      {required this.baseValue,
      required this.baseCost,
      required this.valueMultiplier,
      required this.costMultiplier,
      this.level = 0,
      final String? $type})
      : $type = $type ?? 'multiplied',
        super._();

  factory _$MultipliedImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultipliedImplFromJson(json);

  @override
  final double baseValue;
  @override
  final int baseCost;
  @override
  final double valueMultiplier;
  @override
  final double costMultiplier;
  @override
  @JsonKey()
  final int level;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipliedImpl &&
            (identical(other.baseValue, baseValue) ||
                other.baseValue == baseValue) &&
            (identical(other.baseCost, baseCost) ||
                other.baseCost == baseCost) &&
            (identical(other.valueMultiplier, valueMultiplier) ||
                other.valueMultiplier == valueMultiplier) &&
            (identical(other.costMultiplier, costMultiplier) ||
                other.costMultiplier == costMultiplier) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, baseValue, baseCost, valueMultiplier, costMultiplier, level);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipliedImplCopyWith<_$MultipliedImpl> get copyWith =>
      __$$MultipliedImplCopyWithImpl<_$MultipliedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double baseValue, int baseCost,
            double valueMultiplier, double costMultiplier, int level)
        multiplied,
    required TResult Function(int baseValue, int baseCost,
            int valueIncrementStep, double costMultiplier, int level)
        incremented,
  }) {
    return multiplied(
        baseValue, baseCost, valueMultiplier, costMultiplier, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double baseValue, int baseCost, double valueMultiplier,
            double costMultiplier, int level)?
        multiplied,
    TResult? Function(int baseValue, int baseCost, int valueIncrementStep,
            double costMultiplier, int level)?
        incremented,
  }) {
    return multiplied?.call(
        baseValue, baseCost, valueMultiplier, costMultiplier, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double baseValue, int baseCost, double valueMultiplier,
            double costMultiplier, int level)?
        multiplied,
    TResult Function(int baseValue, int baseCost, int valueIncrementStep,
            double costMultiplier, int level)?
        incremented,
    required TResult orElse(),
  }) {
    if (multiplied != null) {
      return multiplied(
          baseValue, baseCost, valueMultiplier, costMultiplier, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Multiplied value) multiplied,
    required TResult Function(Incremented value) incremented,
  }) {
    return multiplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Multiplied value)? multiplied,
    TResult? Function(Incremented value)? incremented,
  }) {
    return multiplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Multiplied value)? multiplied,
    TResult Function(Incremented value)? incremented,
    required TResult orElse(),
  }) {
    if (multiplied != null) {
      return multiplied(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultipliedImplToJson(
      this,
    );
  }
}

abstract class Multiplied extends Resource {
  const factory Multiplied(
      {required final double baseValue,
      required final int baseCost,
      required final double valueMultiplier,
      required final double costMultiplier,
      final int level}) = _$MultipliedImpl;
  const Multiplied._() : super._();

  factory Multiplied.fromJson(Map<String, dynamic> json) =
      _$MultipliedImpl.fromJson;

  @override
  double get baseValue;
  @override
  int get baseCost;
  double get valueMultiplier;
  @override
  double get costMultiplier;
  @override
  int get level;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultipliedImplCopyWith<_$MultipliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementedImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$IncrementedImplCopyWith(
          _$IncrementedImpl value, $Res Function(_$IncrementedImpl) then) =
      __$$IncrementedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int baseValue,
      int baseCost,
      int valueIncrementStep,
      double costMultiplier,
      int level});
}

/// @nodoc
class __$$IncrementedImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$IncrementedImpl>
    implements _$$IncrementedImplCopyWith<$Res> {
  __$$IncrementedImplCopyWithImpl(
      _$IncrementedImpl _value, $Res Function(_$IncrementedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseValue = null,
    Object? baseCost = null,
    Object? valueIncrementStep = null,
    Object? costMultiplier = null,
    Object? level = null,
  }) {
    return _then(_$IncrementedImpl(
      baseValue: null == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as int,
      baseCost: null == baseCost
          ? _value.baseCost
          : baseCost // ignore: cast_nullable_to_non_nullable
              as int,
      valueIncrementStep: null == valueIncrementStep
          ? _value.valueIncrementStep
          : valueIncrementStep // ignore: cast_nullable_to_non_nullable
              as int,
      costMultiplier: null == costMultiplier
          ? _value.costMultiplier
          : costMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncrementedImpl extends Incremented {
  const _$IncrementedImpl(
      {required this.baseValue,
      required this.baseCost,
      this.valueIncrementStep = 1,
      required this.costMultiplier,
      this.level = 0,
      final String? $type})
      : $type = $type ?? 'incremented',
        super._();

  factory _$IncrementedImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncrementedImplFromJson(json);

  @override
  final int baseValue;
  @override
  final int baseCost;
  @override
  @JsonKey()
  final int valueIncrementStep;
  @override
  final double costMultiplier;
  @override
  @JsonKey()
  final int level;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementedImpl &&
            (identical(other.baseValue, baseValue) ||
                other.baseValue == baseValue) &&
            (identical(other.baseCost, baseCost) ||
                other.baseCost == baseCost) &&
            (identical(other.valueIncrementStep, valueIncrementStep) ||
                other.valueIncrementStep == valueIncrementStep) &&
            (identical(other.costMultiplier, costMultiplier) ||
                other.costMultiplier == costMultiplier) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseValue, baseCost,
      valueIncrementStep, costMultiplier, level);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementedImplCopyWith<_$IncrementedImpl> get copyWith =>
      __$$IncrementedImplCopyWithImpl<_$IncrementedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double baseValue, int baseCost,
            double valueMultiplier, double costMultiplier, int level)
        multiplied,
    required TResult Function(int baseValue, int baseCost,
            int valueIncrementStep, double costMultiplier, int level)
        incremented,
  }) {
    return incremented(
        baseValue, baseCost, valueIncrementStep, costMultiplier, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double baseValue, int baseCost, double valueMultiplier,
            double costMultiplier, int level)?
        multiplied,
    TResult? Function(int baseValue, int baseCost, int valueIncrementStep,
            double costMultiplier, int level)?
        incremented,
  }) {
    return incremented?.call(
        baseValue, baseCost, valueIncrementStep, costMultiplier, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double baseValue, int baseCost, double valueMultiplier,
            double costMultiplier, int level)?
        multiplied,
    TResult Function(int baseValue, int baseCost, int valueIncrementStep,
            double costMultiplier, int level)?
        incremented,
    required TResult orElse(),
  }) {
    if (incremented != null) {
      return incremented(
          baseValue, baseCost, valueIncrementStep, costMultiplier, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Multiplied value) multiplied,
    required TResult Function(Incremented value) incremented,
  }) {
    return incremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Multiplied value)? multiplied,
    TResult? Function(Incremented value)? incremented,
  }) {
    return incremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Multiplied value)? multiplied,
    TResult Function(Incremented value)? incremented,
    required TResult orElse(),
  }) {
    if (incremented != null) {
      return incremented(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IncrementedImplToJson(
      this,
    );
  }
}

abstract class Incremented extends Resource {
  const factory Incremented(
      {required final int baseValue,
      required final int baseCost,
      final int valueIncrementStep,
      required final double costMultiplier,
      final int level}) = _$IncrementedImpl;
  const Incremented._() : super._();

  factory Incremented.fromJson(Map<String, dynamic> json) =
      _$IncrementedImpl.fromJson;

  @override
  int get baseValue;
  @override
  int get baseCost;
  int get valueIncrementStep;
  @override
  double get costMultiplier;
  @override
  int get level;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementedImplCopyWith<_$IncrementedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
