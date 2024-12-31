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

Theme _$ThemeFromJson(Map<String, dynamic> json) {
  return _Theme.fromJson(json);
}

/// @nodoc
mixin _$Theme {
  String get name => throw _privateConstructorUsedError;
  int get tier => throw _privateConstructorUsedError;
  List<Subtheme> get subthemes => throw _privateConstructorUsedError;

  /// Serializes this Theme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Theme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeCopyWith<Theme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeCopyWith<$Res> {
  factory $ThemeCopyWith(Theme value, $Res Function(Theme) then) =
      _$ThemeCopyWithImpl<$Res, Theme>;
  @useResult
  $Res call({String name, int tier, List<Subtheme> subthemes});
}

/// @nodoc
class _$ThemeCopyWithImpl<$Res, $Val extends Theme>
    implements $ThemeCopyWith<$Res> {
  _$ThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Theme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tier = null,
    Object? subthemes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as int,
      subthemes: null == subthemes
          ? _value.subthemes
          : subthemes // ignore: cast_nullable_to_non_nullable
              as List<Subtheme>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeImplCopyWith<$Res> implements $ThemeCopyWith<$Res> {
  factory _$$ThemeImplCopyWith(
          _$ThemeImpl value, $Res Function(_$ThemeImpl) then) =
      __$$ThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int tier, List<Subtheme> subthemes});
}

/// @nodoc
class __$$ThemeImplCopyWithImpl<$Res>
    extends _$ThemeCopyWithImpl<$Res, _$ThemeImpl>
    implements _$$ThemeImplCopyWith<$Res> {
  __$$ThemeImplCopyWithImpl(
      _$ThemeImpl _value, $Res Function(_$ThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Theme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tier = null,
    Object? subthemes = null,
  }) {
    return _then(_$ThemeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as int,
      subthemes: null == subthemes
          ? _value._subthemes
          : subthemes // ignore: cast_nullable_to_non_nullable
              as List<Subtheme>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeImpl implements _Theme {
  const _$ThemeImpl(
      {required this.name,
      required this.tier,
      required final List<Subtheme> subthemes})
      : _subthemes = subthemes;

  factory _$ThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeImplFromJson(json);

  @override
  final String name;
  @override
  final int tier;
  final List<Subtheme> _subthemes;
  @override
  List<Subtheme> get subthemes {
    if (_subthemes is EqualUnmodifiableListView) return _subthemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subthemes);
  }

  @override
  String toString() {
    return 'Theme(name: $name, tier: $tier, subthemes: $subthemes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            const DeepCollectionEquality()
                .equals(other._subthemes, _subthemes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, tier, const DeepCollectionEquality().hash(_subthemes));

  /// Create a copy of Theme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeImplCopyWith<_$ThemeImpl> get copyWith =>
      __$$ThemeImplCopyWithImpl<_$ThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeImplToJson(
      this,
    );
  }
}

abstract class _Theme implements Theme {
  const factory _Theme(
      {required final String name,
      required final int tier,
      required final List<Subtheme> subthemes}) = _$ThemeImpl;

  factory _Theme.fromJson(Map<String, dynamic> json) = _$ThemeImpl.fromJson;

  @override
  String get name;
  @override
  int get tier;
  @override
  List<Subtheme> get subthemes;

  /// Create a copy of Theme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeImplCopyWith<_$ThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subtheme _$SubthemeFromJson(Map<String, dynamic> json) {
  return _Subtheme.fromJson(json);
}

/// @nodoc
mixin _$Subtheme {
  String get name => throw _privateConstructorUsedError;
  List<Concept> get concepts => throw _privateConstructorUsedError;

  /// Serializes this Subtheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subtheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubthemeCopyWith<Subtheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubthemeCopyWith<$Res> {
  factory $SubthemeCopyWith(Subtheme value, $Res Function(Subtheme) then) =
      _$SubthemeCopyWithImpl<$Res, Subtheme>;
  @useResult
  $Res call({String name, List<Concept> concepts});
}

/// @nodoc
class _$SubthemeCopyWithImpl<$Res, $Val extends Subtheme>
    implements $SubthemeCopyWith<$Res> {
  _$SubthemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subtheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? concepts = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      concepts: null == concepts
          ? _value.concepts
          : concepts // ignore: cast_nullable_to_non_nullable
              as List<Concept>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubthemeImplCopyWith<$Res>
    implements $SubthemeCopyWith<$Res> {
  factory _$$SubthemeImplCopyWith(
          _$SubthemeImpl value, $Res Function(_$SubthemeImpl) then) =
      __$$SubthemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Concept> concepts});
}

/// @nodoc
class __$$SubthemeImplCopyWithImpl<$Res>
    extends _$SubthemeCopyWithImpl<$Res, _$SubthemeImpl>
    implements _$$SubthemeImplCopyWith<$Res> {
  __$$SubthemeImplCopyWithImpl(
      _$SubthemeImpl _value, $Res Function(_$SubthemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subtheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? concepts = null,
  }) {
    return _then(_$SubthemeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      concepts: null == concepts
          ? _value._concepts
          : concepts // ignore: cast_nullable_to_non_nullable
              as List<Concept>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubthemeImpl implements _Subtheme {
  const _$SubthemeImpl(
      {required this.name, required final List<Concept> concepts})
      : _concepts = concepts;

  factory _$SubthemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubthemeImplFromJson(json);

  @override
  final String name;
  final List<Concept> _concepts;
  @override
  List<Concept> get concepts {
    if (_concepts is EqualUnmodifiableListView) return _concepts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_concepts);
  }

  @override
  String toString() {
    return 'Subtheme(name: $name, concepts: $concepts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubthemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._concepts, _concepts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_concepts));

  /// Create a copy of Subtheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubthemeImplCopyWith<_$SubthemeImpl> get copyWith =>
      __$$SubthemeImplCopyWithImpl<_$SubthemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubthemeImplToJson(
      this,
    );
  }
}

abstract class _Subtheme implements Subtheme {
  const factory _Subtheme(
      {required final String name,
      required final List<Concept> concepts}) = _$SubthemeImpl;

  factory _Subtheme.fromJson(Map<String, dynamic> json) =
      _$SubthemeImpl.fromJson;

  @override
  String get name;
  @override
  List<Concept> get concepts;

  /// Create a copy of Subtheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubthemeImplCopyWith<_$SubthemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Concept _$ConceptFromJson(Map<String, dynamic> json) {
  return _Concept.fromJson(json);
}

/// @nodoc
mixin _$Concept {
  String get name => throw _privateConstructorUsedError;
  Rarity get rarity => throw _privateConstructorUsedError;
  bool get unlocked => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this Concept to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Concept
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptCopyWith<Concept> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptCopyWith<$Res> {
  factory $ConceptCopyWith(Concept value, $Res Function(Concept) then) =
      _$ConceptCopyWithImpl<$Res, Concept>;
  @useResult
  $Res call({String name, Rarity rarity, bool unlocked, String content});
}

/// @nodoc
class _$ConceptCopyWithImpl<$Res, $Val extends Concept>
    implements $ConceptCopyWith<$Res> {
  _$ConceptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Concept
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rarity = null,
    Object? unlocked = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      unlocked: null == unlocked
          ? _value.unlocked
          : unlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptImplCopyWith<$Res> implements $ConceptCopyWith<$Res> {
  factory _$$ConceptImplCopyWith(
          _$ConceptImpl value, $Res Function(_$ConceptImpl) then) =
      __$$ConceptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Rarity rarity, bool unlocked, String content});
}

/// @nodoc
class __$$ConceptImplCopyWithImpl<$Res>
    extends _$ConceptCopyWithImpl<$Res, _$ConceptImpl>
    implements _$$ConceptImplCopyWith<$Res> {
  __$$ConceptImplCopyWithImpl(
      _$ConceptImpl _value, $Res Function(_$ConceptImpl) _then)
      : super(_value, _then);

  /// Create a copy of Concept
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rarity = null,
    Object? unlocked = null,
    Object? content = null,
  }) {
    return _then(_$ConceptImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      unlocked: null == unlocked
          ? _value.unlocked
          : unlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptImpl implements _Concept {
  const _$ConceptImpl(
      {required this.name,
      required this.rarity,
      required this.unlocked,
      required this.content});

  factory _$ConceptImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptImplFromJson(json);

  @override
  final String name;
  @override
  final Rarity rarity;
  @override
  final bool unlocked;
  @override
  final String content;

  @override
  String toString() {
    return 'Concept(name: $name, rarity: $rarity, unlocked: $unlocked, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.unlocked, unlocked) ||
                other.unlocked == unlocked) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, rarity, unlocked, content);

  /// Create a copy of Concept
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptImplCopyWith<_$ConceptImpl> get copyWith =>
      __$$ConceptImplCopyWithImpl<_$ConceptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptImplToJson(
      this,
    );
  }
}

abstract class _Concept implements Concept {
  const factory _Concept(
      {required final String name,
      required final Rarity rarity,
      required final bool unlocked,
      required final String content}) = _$ConceptImpl;

  factory _Concept.fromJson(Map<String, dynamic> json) = _$ConceptImpl.fromJson;

  @override
  String get name;
  @override
  Rarity get rarity;
  @override
  bool get unlocked;
  @override
  String get content;

  /// Create a copy of Concept
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptImplCopyWith<_$ConceptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlashCard _$FlashCardFromJson(Map<String, dynamic> json) {
  return _FlashCard.fromJson(json);
}

/// @nodoc
mixin _$FlashCard {
  Concept get concept => throw _privateConstructorUsedError;
  String get bonus => throw _privateConstructorUsedError;

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
  $Res call({Concept concept, String bonus});

  $ConceptCopyWith<$Res> get concept;
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
    Object? concept = null,
    Object? bonus = null,
  }) {
    return _then(_value.copyWith(
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as Concept,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FlashCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConceptCopyWith<$Res> get concept {
    return $ConceptCopyWith<$Res>(_value.concept, (value) {
      return _then(_value.copyWith(concept: value) as $Val);
    });
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
  $Res call({Concept concept, String bonus});

  @override
  $ConceptCopyWith<$Res> get concept;
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
    Object? concept = null,
    Object? bonus = null,
  }) {
    return _then(_$FlashCardImpl(
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as Concept,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardImpl implements _FlashCard {
  const _$FlashCardImpl({required this.concept, required this.bonus});

  factory _$FlashCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardImplFromJson(json);

  @override
  final Concept concept;
  @override
  final String bonus;

  @override
  String toString() {
    return 'FlashCard(concept: $concept, bonus: $bonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardImpl &&
            (identical(other.concept, concept) || other.concept == concept) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, concept, bonus);

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
      {required final Concept concept,
      required final String bonus}) = _$FlashCardImpl;

  factory _FlashCard.fromJson(Map<String, dynamic> json) =
      _$FlashCardImpl.fromJson;

  @override
  Concept get concept;
  @override
  String get bonus;

  /// Create a copy of FlashCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashCardImplCopyWith<_$FlashCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
