import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';
import 'package:weather_demo/domain/models/weather_request.dart';
import 'package:weather_demo/utils/result.dart';

abstract class WeatherRepository {
  Future<Result<Weather>> getCurrentWeather(WeatherRequest request);
  Future<Result<Forecast>> getWeatherForecast(WeatherRequest request);
}
