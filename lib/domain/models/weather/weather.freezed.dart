// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherMain {
  double get temp;

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherMainCopyWith<WeatherMain> get copyWith =>
      _$WeatherMainCopyWithImpl<WeatherMain>(this as WeatherMain, _$identity);

  /// Serializes this WeatherMain to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherMain &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @override
  String toString() {
    return 'WeatherMain(temp: $temp)';
  }
}

/// @nodoc
abstract mixin class $WeatherMainCopyWith<$Res> {
  factory $WeatherMainCopyWith(
          WeatherMain value, $Res Function(WeatherMain) _then) =
      _$WeatherMainCopyWithImpl;
  @useResult
  $Res call({double temp});
}

/// @nodoc
class _$WeatherMainCopyWithImpl<$Res> implements $WeatherMainCopyWith<$Res> {
  _$WeatherMainCopyWithImpl(this._self, this._then);

  final WeatherMain _self;
  final $Res Function(WeatherMain) _then;

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_self.copyWith(
      temp: null == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherMain implements WeatherMain {
  _WeatherMain({required this.temp});
  factory _WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainFromJson(json);

  @override
  final double temp;

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherMainCopyWith<_WeatherMain> get copyWith =>
      __$WeatherMainCopyWithImpl<_WeatherMain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherMainToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherMain &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @override
  String toString() {
    return 'WeatherMain(temp: $temp)';
  }
}

/// @nodoc
abstract mixin class _$WeatherMainCopyWith<$Res>
    implements $WeatherMainCopyWith<$Res> {
  factory _$WeatherMainCopyWith(
          _WeatherMain value, $Res Function(_WeatherMain) _then) =
      __$WeatherMainCopyWithImpl;
  @override
  @useResult
  $Res call({double temp});
}

/// @nodoc
class __$WeatherMainCopyWithImpl<$Res> implements _$WeatherMainCopyWith<$Res> {
  __$WeatherMainCopyWithImpl(this._self, this._then);

  final _WeatherMain _self;
  final $Res Function(_WeatherMain) _then;

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? temp = null,
  }) {
    return _then(_WeatherMain(
      temp: null == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$Weather {
  @JsonKey(name: 'main')
  WeatherMain get main;
  int get dt;
  String? get name;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<Weather> get copyWith =>
      _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Weather &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, main, dt, name);

  @override
  String toString() {
    return 'Weather(main: $main, dt: $dt, name: $name)';
  }
}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) =
      _$WeatherCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'main') WeatherMain main, int dt, String? name});

  $WeatherMainCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? dt = null,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain,
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherMainCopyWith<$Res> get main {
    return $WeatherMainCopyWith<$Res>(_self.main, (value) {
      return _then(_self.copyWith(main: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Weather implements Weather {
  _Weather(
      {@JsonKey(name: 'main') required this.main, required this.dt, this.name});
  factory _Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  @override
  @JsonKey(name: 'main')
  final WeatherMain main;
  @override
  final int dt;
  @override
  final String? name;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weather &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, main, dt, name);

  @override
  String toString() {
    return 'Weather(main: $main, dt: $dt, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) =
      __$WeatherCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'main') WeatherMain main, int dt, String? name});

  @override
  $WeatherMainCopyWith<$Res> get main;
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? main = null,
    Object? dt = null,
    Object? name = freezed,
  }) {
    return _then(_Weather(
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain,
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherMainCopyWith<$Res> get main {
    return $WeatherMainCopyWith<$Res>(_self.main, (value) {
      return _then(_self.copyWith(main: value));
    });
  }
}

// dart format on
