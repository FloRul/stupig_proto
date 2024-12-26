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

FlashCard _$FlashCardFromJson(Map<String, dynamic> json) {
  return _FlashCard.fromJson(json);
}

/// @nodoc
mixin _$FlashCard {
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Rarity get rarity => throw _privateConstructorUsedError;

  /// Serializes this FlashCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashCardCopyWith<FlashCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardCopyWith<$Res> {
  factory $FlashCardCopyWith(FlashCard value, $Res Function(FlashCard) then) =
      _$FlashCardCopyWithImpl<$Res, FlashCard>;
  @useResult
  $Res call({String name, String content, Rarity rarity});
}

/// @nodoc
class _$FlashCardCopyWithImpl<$Res, $Val extends FlashCard>
    implements $FlashCardCopyWith<$Res> {
  _$FlashCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? rarity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardImplCopyWith<$Res>
    implements $FlashCardCopyWith<$Res> {
  factory _$$FlashCardImplCopyWith(
          _$FlashCardImpl value, $Res Function(_$FlashCardImpl) then) =
      __$$FlashCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String content, Rarity rarity});
}

/// @nodoc
class __$$FlashCardImplCopyWithImpl<$Res>
    extends _$FlashCardCopyWithImpl<$Res, _$FlashCardImpl>
    implements _$$FlashCardImplCopyWith<$Res> {
  __$$FlashCardImplCopyWithImpl(
      _$FlashCardImpl _value, $Res Function(_$FlashCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? rarity = null,
  }) {
    return _then(_$FlashCardImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardImpl implements _FlashCard {
  const _$FlashCardImpl(
      {required this.name, required this.content, required this.rarity});

  factory _$FlashCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardImplFromJson(json);

  @override
  final String name;
  @override
  final String content;
  @override
  final Rarity rarity;

  @override
  String toString() {
    return 'FlashCard(name: $name, content: $content, rarity: $rarity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rarity, rarity) || other.rarity == rarity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, content, rarity);

  /// Create a copy of FlashCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardImplCopyWith<_$FlashCardImpl> get copyWith =>
      __$$FlashCardImplCopyWithImpl<_$FlashCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardImplToJson(
      this,
    );
  }
}

abstract class _FlashCard implements FlashCard {
  const factory _FlashCard(
      {required final String name,
      required final String content,
      required final Rarity rarity}) = _$FlashCardImpl;

  factory _FlashCard.fromJson(Map<String, dynamic> json) =
      _$FlashCardImpl.fromJson;

  @override
  String get name;
  @override
  String get content;
  @override
  Rarity get rarity;

  /// Create a copy of FlashCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashCardImplCopyWith<_$FlashCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
