import 'package:flutter_test/flutter_test.dart';
import 'package:weather_demo/data/repositories/weather/weather_repository.dart';
import 'package:weather_demo/data/repositories/weather/weather_repository_imp.dart';
import 'package:weather_demo/data/services/api/weather/weather_service.dart';
import 'package:weather_demo/testing/data/services/mock_weather_service.dart';
import 'package:weather_demo/testing/models/forecast.dart';
import 'package:weather_demo/testing/models/request.dart';
import 'package:weather_demo/testing/models/weather.dart';
import 'package:weather_demo/utils/result.dart';

void main() {
  group('WeatherRepository tests', () {
    late WeatherService weatherService;
    late WeatherRepository weatherRepository;

    setUp(() {
      weatherService = MockWeatherService();
      weatherRepository = WeatherRepositoryImp(service: weatherService);
    });

    test('should get current weather', () async {
      final result = await weatherRepository.getCurrentWeather(kRequest);
      final weather = result.asOk.value;
      expect(weather, kWeather);
    });

    test('should get weather forecast', () async {
      final result = await weatherRepository.getWeatherForecast(kRequest);
      final forecast = result.asOk.value;
      expect(forecast.list.length, kForecast.list.length);
    });
  });
}
