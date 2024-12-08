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

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  Theme get theme => throw _privateConstructorUsedError;
  String get subtheme => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Subject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call({Theme theme, String subtheme, String name});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? subtheme = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
      subtheme: null == subtheme
          ? _value.subtheme
          : subtheme // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectImplCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$SubjectImplCopyWith(
          _$SubjectImpl value, $Res Function(_$SubjectImpl) then) =
      __$$SubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Theme theme, String subtheme, String name});
}

/// @nodoc
class __$$SubjectImplCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$SubjectImpl>
    implements _$$SubjectImplCopyWith<$Res> {
  __$$SubjectImplCopyWithImpl(
      _$SubjectImpl _value, $Res Function(_$SubjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? subtheme = null,
    Object? name = null,
  }) {
    return _then(_$SubjectImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
      subtheme: null == subtheme
          ? _value.subtheme
          : subtheme // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectImpl implements _Subject {
  const _$SubjectImpl(
      {required this.theme, required this.subtheme, required this.name});

  factory _$SubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectImplFromJson(json);

  @override
  final Theme theme;
  @override
  final String subtheme;
  @override
  final String name;

  @override
  String toString() {
    return 'Subject(theme: $theme, subtheme: $subtheme, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.subtheme, subtheme) ||
                other.subtheme == subtheme) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, theme, subtheme, name);

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      __$$SubjectImplCopyWithImpl<_$SubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectImplToJson(
      this,
    );
  }
}

abstract class _Subject implements Subject {
  const factory _Subject(
      {required final Theme theme,
      required final String subtheme,
      required final String name}) = _$SubjectImpl;

  factory _Subject.fromJson(Map<String, dynamic> json) = _$SubjectImpl.fromJson;

  @override
  Theme get theme;
  @override
  String get subtheme;
  @override
  String get name;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  double get xp => throw _privateConstructorUsedError;
  double? get money => throw _privateConstructorUsedError;

  /// Serializes this Reward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call({double xp, double? money});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? money = freezed,
  }) {
    return _then(_value.copyWith(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as double,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardImplCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$RewardImplCopyWith(
          _$RewardImpl value, $Res Function(_$RewardImpl) then) =
      __$$RewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double xp, double? money});
}

/// @nodoc
class __$$RewardImplCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$RewardImpl>
    implements _$$RewardImplCopyWith<$Res> {
  __$$RewardImplCopyWithImpl(
      _$RewardImpl _value, $Res Function(_$RewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? money = freezed,
  }) {
    return _then(_$RewardImpl(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as double,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardImpl implements _Reward {
  const _$RewardImpl({required this.xp, this.money});

  factory _$RewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardImplFromJson(json);

  @override
  final double xp;
  @override
  final double? money;

  @override
  String toString() {
    return 'Reward(xp: $xp, money: $money)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardImpl &&
            (identical(other.xp, xp) || other.xp == xp) &&
            (identical(other.money, money) || other.money == money));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xp, money);

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      __$$RewardImplCopyWithImpl<_$RewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardImplToJson(
      this,
    );
  }
}

abstract class _Reward implements Reward {
  const factory _Reward({required final double xp, final double? money}) =
      _$RewardImpl;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$RewardImpl.fromJson;

  @override
  double get xp;
  @override
  double? get money;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Prerequisite _$PrerequisiteFromJson(Map<String, dynamic> json) {
  return _Prerequisite.fromJson(json);
}

/// @nodoc
mixin _$Prerequisite {
  double get cpuPower => throw _privateConstructorUsedError;
  double get ram => throw _privateConstructorUsedError;

  /// Serializes this Prerequisite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Prerequisite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrerequisiteCopyWith<Prerequisite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrerequisiteCopyWith<$Res> {
  factory $PrerequisiteCopyWith(
          Prerequisite value, $Res Function(Prerequisite) then) =
      _$PrerequisiteCopyWithImpl<$Res, Prerequisite>;
  @useResult
  $Res call({double cpuPower, double ram});
}

/// @nodoc
class _$PrerequisiteCopyWithImpl<$Res, $Val extends Prerequisite>
    implements $PrerequisiteCopyWith<$Res> {
  _$PrerequisiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Prerequisite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuPower = null,
    Object? ram = null,
  }) {
    return _then(_value.copyWith(
      cpuPower: null == cpuPower
          ? _value.cpuPower
          : cpuPower // ignore: cast_nullable_to_non_nullable
              as double,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrerequisiteImplCopyWith<$Res>
    implements $PrerequisiteCopyWith<$Res> {
  factory _$$PrerequisiteImplCopyWith(
          _$PrerequisiteImpl value, $Res Function(_$PrerequisiteImpl) then) =
      __$$PrerequisiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double cpuPower, double ram});
}

/// @nodoc
class __$$PrerequisiteImplCopyWithImpl<$Res>
    extends _$PrerequisiteCopyWithImpl<$Res, _$PrerequisiteImpl>
    implements _$$PrerequisiteImplCopyWith<$Res> {
  __$$PrerequisiteImplCopyWithImpl(
      _$PrerequisiteImpl _value, $Res Function(_$PrerequisiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prerequisite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuPower = null,
    Object? ram = null,
  }) {
    return _then(_$PrerequisiteImpl(
      cpuPower: null == cpuPower
          ? _value.cpuPower
          : cpuPower // ignore: cast_nullable_to_non_nullable
              as double,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrerequisiteImpl implements _Prerequisite {
  const _$PrerequisiteImpl({required this.cpuPower, required this.ram});

  factory _$PrerequisiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrerequisiteImplFromJson(json);

  @override
  final double cpuPower;
  @override
  final double ram;

  @override
  String toString() {
    return 'Prerequisite(cpuPower: $cpuPower, ram: $ram)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrerequisiteImpl &&
            (identical(other.cpuPower, cpuPower) ||
                other.cpuPower == cpuPower) &&
            (identical(other.ram, ram) || other.ram == ram));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cpuPower, ram);

  /// Create a copy of Prerequisite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrerequisiteImplCopyWith<_$PrerequisiteImpl> get copyWith =>
      __$$PrerequisiteImplCopyWithImpl<_$PrerequisiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrerequisiteImplToJson(
      this,
    );
  }
}

abstract class _Prerequisite implements Prerequisite {
  const factory _Prerequisite(
      {required final double cpuPower,
      required final double ram}) = _$PrerequisiteImpl;

  factory _Prerequisite.fromJson(Map<String, dynamic> json) =
      _$PrerequisiteImpl.fromJson;

  @override
  double get cpuPower;
  @override
  double get ram;

  /// Create a copy of Prerequisite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrerequisiteImplCopyWith<_$PrerequisiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Theme get theme => throw _privateConstructorUsedError;
  double get ram => throw _privateConstructorUsedError;
  String get subtheme => throw _privateConstructorUsedError;
  Reward get reward => throw _privateConstructorUsedError;
  Prerequisite? get prerequisite => throw _privateConstructorUsedError;
  ProjectStatus get status => throw _privateConstructorUsedError;

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String name,
      String description,
      Theme theme,
      double ram,
      String subtheme,
      Reward reward,
      Prerequisite? prerequisite,
      ProjectStatus status});

  $RewardCopyWith<$Res> get reward;
  $PrerequisiteCopyWith<$Res>? get prerequisite;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? theme = null,
    Object? ram = null,
    Object? subtheme = null,
    Object? reward = null,
    Object? prerequisite = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as double,
      subtheme: null == subtheme
          ? _value.subtheme
          : subtheme // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      prerequisite: freezed == prerequisite
          ? _value.prerequisite
          : prerequisite // ignore: cast_nullable_to_non_nullable
              as Prerequisite?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
    ) as $Val);
  }

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res> get reward {
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrerequisiteCopyWith<$Res>? get prerequisite {
    if (_value.prerequisite == null) {
      return null;
    }

    return $PrerequisiteCopyWith<$Res>(_value.prerequisite!, (value) {
      return _then(_value.copyWith(prerequisite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      Theme theme,
      double ram,
      String subtheme,
      Reward reward,
      Prerequisite? prerequisite,
      ProjectStatus status});

  @override
  $RewardCopyWith<$Res> get reward;
  @override
  $PrerequisiteCopyWith<$Res>? get prerequisite;
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? theme = null,
    Object? ram = null,
    Object? subtheme = null,
    Object? reward = null,
    Object? prerequisite = freezed,
    Object? status = null,
  }) {
    return _then(_$ProjectImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as double,
      subtheme: null == subtheme
          ? _value.subtheme
          : subtheme // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      prerequisite: freezed == prerequisite
          ? _value.prerequisite
          : prerequisite // ignore: cast_nullable_to_non_nullable
              as Prerequisite?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.name,
      required this.description,
      required this.theme,
      required this.ram,
      required this.subtheme,
      required this.reward,
      this.prerequisite,
      required this.status});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final Theme theme;
  @override
  final double ram;
  @override
  final String subtheme;
  @override
  final Reward reward;
  @override
  final Prerequisite? prerequisite;
  @override
  final ProjectStatus status;

  @override
  String toString() {
    return 'Project(name: $name, description: $description, theme: $theme, ram: $ram, subtheme: $subtheme, reward: $reward, prerequisite: $prerequisite, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.subtheme, subtheme) ||
                other.subtheme == subtheme) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.prerequisite, prerequisite) ||
                other.prerequisite == prerequisite) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, theme, ram,
      subtheme, reward, prerequisite, status);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {required final String name,
      required final String description,
      required final Theme theme,
      required final double ram,
      required final String subtheme,
      required final Reward reward,
      final Prerequisite? prerequisite,
      required final ProjectStatus status}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  Theme get theme;
  @override
  double get ram;
  @override
  String get subtheme;
  @override
  Reward get reward;
  @override
  Prerequisite? get prerequisite;
  @override
  ProjectStatus get status;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
