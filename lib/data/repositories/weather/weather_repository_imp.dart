import 'package:weather_demo/data/repositories/weather/weather_repository.dart';
import 'package:weather_demo/data/services/api/weather/weather_service.dart';
import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';
import 'package:weather_demo/domain/models/weather_request.dart';
import 'package:weather_demo/utils/result.dart';

class WeatherRepositoryImp implements WeatherRepository {
  WeatherRepositoryImp({required WeatherService weatherService})
      : _weatherService = weatherService;

  final WeatherService _weatherService;

  @override
  Future<Result<Weather>> getCurrentWeather(WeatherRequest request) {
    return _weatherService.getCurrentWeather(request);
  }

  @override
  Future<Result<Forecast>> getWeatherForecast5Days(WeatherRequest request) {
    return _weatherService.getWeatherForecast5Days(request);
  }
}
