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

Completion _$CompletionFromJson(Map<String, dynamic> json) {
  return _Completion.fromJson(json);
}

/// @nodoc
mixin _$Completion {
  double get baseAmount => throw _privateConstructorUsedError;
  double get completedAmount => throw _privateConstructorUsedError;
  List<double> get multipliers => throw _privateConstructorUsedError;

  /// Serializes this Completion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletionCopyWith<Completion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionCopyWith<$Res> {
  factory $CompletionCopyWith(
          Completion value, $Res Function(Completion) then) =
      _$CompletionCopyWithImpl<$Res, Completion>;
  @useResult
  $Res call(
      {double baseAmount, double completedAmount, List<double> multipliers});
}

/// @nodoc
class _$CompletionCopyWithImpl<$Res, $Val extends Completion>
    implements $CompletionCopyWith<$Res> {
  _$CompletionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseAmount = null,
    Object? completedAmount = null,
    Object? multipliers = null,
  }) {
    return _then(_value.copyWith(
      baseAmount: null == baseAmount
          ? _value.baseAmount
          : baseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      completedAmount: null == completedAmount
          ? _value.completedAmount
          : completedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      multipliers: null == multipliers
          ? _value.multipliers
          : multipliers // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletionImplCopyWith<$Res>
    implements $CompletionCopyWith<$Res> {
  factory _$$CompletionImplCopyWith(
          _$CompletionImpl value, $Res Function(_$CompletionImpl) then) =
      __$$CompletionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double baseAmount, double completedAmount, List<double> multipliers});
}

/// @nodoc
class __$$CompletionImplCopyWithImpl<$Res>
    extends _$CompletionCopyWithImpl<$Res, _$CompletionImpl>
    implements _$$CompletionImplCopyWith<$Res> {
  __$$CompletionImplCopyWithImpl(
      _$CompletionImpl _value, $Res Function(_$CompletionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseAmount = null,
    Object? completedAmount = null,
    Object? multipliers = null,
  }) {
    return _then(_$CompletionImpl(
      baseAmount: null == baseAmount
          ? _value.baseAmount
          : baseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      completedAmount: null == completedAmount
          ? _value.completedAmount
          : completedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      multipliers: null == multipliers
          ? _value._multipliers
          : multipliers // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionImpl extends _Completion with DiagnosticableTreeMixin {
  const _$CompletionImpl(
      {required this.baseAmount,
      required this.completedAmount,
      required final List<double> multipliers})
      : _multipliers = multipliers,
        super._();

  factory _$CompletionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionImplFromJson(json);

  @override
  final double baseAmount;
  @override
  final double completedAmount;
  final List<double> _multipliers;
  @override
  List<double> get multipliers {
    if (_multipliers is EqualUnmodifiableListView) return _multipliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multipliers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Completion(baseAmount: $baseAmount, completedAmount: $completedAmount, multipliers: $multipliers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Completion'))
      ..add(DiagnosticsProperty('baseAmount', baseAmount))
      ..add(DiagnosticsProperty('completedAmount', completedAmount))
      ..add(DiagnosticsProperty('multipliers', multipliers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionImpl &&
            (identical(other.baseAmount, baseAmount) ||
                other.baseAmount == baseAmount) &&
            (identical(other.completedAmount, completedAmount) ||
                other.completedAmount == completedAmount) &&
            const DeepCollectionEquality()
                .equals(other._multipliers, _multipliers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseAmount, completedAmount,
      const DeepCollectionEquality().hash(_multipliers));

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionImplCopyWith<_$CompletionImpl> get copyWith =>
      __$$CompletionImplCopyWithImpl<_$CompletionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionImplToJson(
      this,
    );
  }
}

abstract class _Completion extends Completion {
  const factory _Completion(
      {required final double baseAmount,
      required final double completedAmount,
      required final List<double> multipliers}) = _$CompletionImpl;
  const _Completion._() : super._();

  factory _Completion.fromJson(Map<String, dynamic> json) =
      _$CompletionImpl.fromJson;

  @override
  double get baseAmount;
  @override
  double get completedAmount;
  @override
  List<double> get multipliers;

  /// Create a copy of Completion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletionImplCopyWith<_$CompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
