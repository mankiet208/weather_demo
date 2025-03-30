import 'package:weather_demo/data/services/api/weather/weather_service.dart';
import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';
import 'package:weather_demo/domain/models/weather_request.dart';
import 'package:weather_demo/utils/result.dart';

import '../../models/forecast.dart';
import '../../models/weather.dart';

class MockWeatherService implements WeatherService {
  @override
  Future<Result<Weather>> getCurrentWeather(WeatherRequest request) async {
    return Result.ok(kWeather);
  }

  @override
  Future<Result<Forecast>> getWeatherForecast(WeatherRequest request) async {
    return Result.ok(kForecast);
  }
}
