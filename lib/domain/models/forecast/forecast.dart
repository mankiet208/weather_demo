import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

/// Forecast data parsed from the API response (not used directly in the UI)
@freezed
abstract class Forecast with _$Forecast {
  factory Forecast({
    required List<Weather> list,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
