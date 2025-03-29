// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastCity {
  String get name;

  /// Create a copy of ForecastCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForecastCityCopyWith<ForecastCity> get copyWith =>
      _$ForecastCityCopyWithImpl<ForecastCity>(
          this as ForecastCity, _$identity);

  /// Serializes this ForecastCity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForecastCity &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'ForecastCity(name: $name)';
  }
}

/// @nodoc
abstract mixin class $ForecastCityCopyWith<$Res> {
  factory $ForecastCityCopyWith(
          ForecastCity value, $Res Function(ForecastCity) _then) =
      _$ForecastCityCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ForecastCityCopyWithImpl<$Res> implements $ForecastCityCopyWith<$Res> {
  _$ForecastCityCopyWithImpl(this._self, this._then);

  final ForecastCity _self;
  final $Res Function(ForecastCity) _then;

  /// Create a copy of ForecastCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ForecastCity implements ForecastCity {
  _ForecastCity({required this.name});
  factory _ForecastCity.fromJson(Map<String, dynamic> json) =>
      _$ForecastCityFromJson(json);

  @override
  final String name;

  /// Create a copy of ForecastCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForecastCityCopyWith<_ForecastCity> get copyWith =>
      __$ForecastCityCopyWithImpl<_ForecastCity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForecastCityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForecastCity &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'ForecastCity(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ForecastCityCopyWith<$Res>
    implements $ForecastCityCopyWith<$Res> {
  factory _$ForecastCityCopyWith(
          _ForecastCity value, $Res Function(_ForecastCity) _then) =
      __$ForecastCityCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$ForecastCityCopyWithImpl<$Res>
    implements _$ForecastCityCopyWith<$Res> {
  __$ForecastCityCopyWithImpl(this._self, this._then);

  final _ForecastCity _self;
  final $Res Function(_ForecastCity) _then;

  /// Create a copy of ForecastCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_ForecastCity(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Forecast {
  @JsonKey(name: 'city')
  ForecastCity get city;
  List<Weather> get list;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<Forecast> get copyWith =>
      _$ForecastCopyWithImpl<Forecast>(this as Forecast, _$identity);

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Forecast &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, city, const DeepCollectionEquality().hash(list));

  @override
  String toString() {
    return 'Forecast(city: $city, list: $list)';
  }
}

/// @nodoc
abstract mixin class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) _then) =
      _$ForecastCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'city') ForecastCity city, List<Weather> list});

  $ForecastCityCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res> implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._self, this._then);

  final Forecast _self;
  final $Res Function(Forecast) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? list = null,
  }) {
    return _then(_self.copyWith(
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as ForecastCity,
      list: null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastCityCopyWith<$Res> get city {
    return $ForecastCityCopyWith<$Res>(_self.city, (value) {
      return _then(_self.copyWith(city: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Forecast implements Forecast {
  _Forecast(
      {@JsonKey(name: 'city') required this.city,
      required final List<Weather> list})
      : _list = list;
  factory _Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  @override
  @JsonKey(name: 'city')
  final ForecastCity city;
  final List<Weather> _list;
  @override
  List<Weather> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForecastCopyWith<_Forecast> get copyWith =>
      __$ForecastCopyWithImpl<_Forecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForecastToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Forecast &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, city, const DeepCollectionEquality().hash(_list));

  @override
  String toString() {
    return 'Forecast(city: $city, list: $list)';
  }
}

/// @nodoc
abstract mixin class _$ForecastCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) _then) =
      __$ForecastCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'city') ForecastCity city, List<Weather> list});

  @override
  $ForecastCityCopyWith<$Res> get city;
}

/// @nodoc
class __$ForecastCopyWithImpl<$Res> implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(this._self, this._then);

  final _Forecast _self;
  final $Res Function(_Forecast) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? city = null,
    Object? list = null,
  }) {
    return _then(_Forecast(
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as ForecastCity,
      list: null == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastCityCopyWith<$Res> get city {
    return $ForecastCityCopyWith<$Res>(_self.city, (value) {
      return _then(_self.copyWith(city: value));
    });
  }
}

// dart format on
