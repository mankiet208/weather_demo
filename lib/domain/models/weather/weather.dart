// ignore_for_file:invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class WeatherParams with _$WeatherParams {
  factory WeatherParams({
    required double temp,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
  }) = _WeatherParams;

  factory WeatherParams.fromJson(Map<String, dynamic> json) =>
      _$WeatherParamsFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  factory Weather({
    @JsonKey(name: 'main') required WeatherParams weatherParams,
    required String name,
    required int dt,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
