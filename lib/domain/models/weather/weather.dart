// ignore_for_file:invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class WeatherMain with _$WeatherMain {
  factory WeatherMain({
    required double temp,
  }) = _WeatherMain;

  factory WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  factory Weather({
    @JsonKey(name: 'main') required WeatherMain main,
    required int dt,
    String? name,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
