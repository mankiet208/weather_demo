import 'package:weather_demo/data/repositories/weather/weather_repository.dart';
import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';
import 'package:weather_demo/domain/models/weather_request.dart';
import 'package:weather_demo/utils/result.dart';

import '../../models/forecast.dart';
import '../../models/weather.dart';

class MockWeatherRepository implements WeatherRepository {
  @override
  Future<Result<Weather>> getCurrentWeather(WeatherRequest request) async {
    return Result.ok(kWeather);
  }

  @override
  Future<Result<Forecast>> getWeatherForecast(WeatherRequest request) async {
    return Result.ok(kForecast);
  }
}

class MockErrorWeatherRepository implements WeatherRepository {
  @override
  Future<Result<Weather>> getCurrentWeather(WeatherRequest request) async {
    return Result.error(Exception('Cannot get current weather'));
  }

  @override
  Future<Result<Forecast>> getWeatherForecast(WeatherRequest request) async {
    return Result.error(Exception('Cannot get  weather forecast'));
  }
}
