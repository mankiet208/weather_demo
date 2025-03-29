// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherMain _$WeatherMainFromJson(Map<String, dynamic> json) => _WeatherMain(
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherMainToJson(_WeatherMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
    };

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
      main: WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      dt: (json['dt'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
      'main': instance.main,
      'dt': instance.dt,
      'name': instance.name,
    };
