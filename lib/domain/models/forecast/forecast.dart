// ignore_for_file:invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
abstract class ForecastCity with _$ForecastCity {
  factory ForecastCity({required String name}) = _ForecastCity;

  factory ForecastCity.fromJson(Map<String, dynamic> json) =>
      _$ForecastCityFromJson(json);
}

@freezed
abstract class Forecast with _$Forecast {
  factory Forecast({
    @JsonKey(name: 'city') required ForecastCity city,
    required List<Weather> list,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
