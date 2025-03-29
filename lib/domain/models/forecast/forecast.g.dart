// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastCity _$ForecastCityFromJson(Map<String, dynamic> json) =>
    _ForecastCity(
      name: json['name'] as String,
    );

Map<String, dynamic> _$ForecastCityToJson(_ForecastCity instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_Forecast _$ForecastFromJson(Map<String, dynamic> json) => _Forecast(
      city: ForecastCity.fromJson(json['city'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastToJson(_Forecast instance) => <String, dynamic>{
      'city': instance.city,
      'list': instance.list,
    };
