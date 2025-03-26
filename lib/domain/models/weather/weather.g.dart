// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherParams _$WeatherParamsFromJson(Map<String, dynamic> json) =>
    _WeatherParams(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherParamsToJson(_WeatherParams instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
      weatherParams:
          WeatherParams.fromJson(json['main'] as Map<String, dynamic>),
      name: json['name'] as String,
      dt: (json['dt'] as num).toInt(),
    );

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
      'main': instance.weatherParams,
      'name': instance.name,
      'dt': instance.dt,
    };
