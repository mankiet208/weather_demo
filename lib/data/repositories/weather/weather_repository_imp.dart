import 'package:weather_demo/data/repositories/weather/weather_repository.dart';
import 'package:weather_demo/data/services/api/weather/weather_service.dart';
import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';
import 'package:weather_demo/domain/models/weather_request.dart';
import 'package:weather_demo/utils/result.dart';

class WeatherRepositoryImp implements WeatherRepository {
  WeatherRepositoryImp({required WeatherService service}) : _service = service;

  final WeatherService _service;

  @override
  Future<Result<Weather>> getCurrentWeather(WeatherRequest request) {
    return _service.getCurrentWeather(request);
  }

  @override
  Future<Result<Forecast>> getWeatherForecast(WeatherRequest request) {
    return _service.getWeatherForecast(request);
  }
}
