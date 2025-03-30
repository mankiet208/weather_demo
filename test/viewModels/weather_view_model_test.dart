import 'package:flutter_test/flutter_test.dart';
import 'package:weather_demo/ui/weather/view_models/weather_view_model.dart';

import '../mocks/data/repositories/fake_weather_repository.dart';
import '../mocks/models/forecast.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('WeatherViewModel tests', () {
    test('load: should fetch the current weather and forecast', () async {
      final weatherRepository = FakeWeatherRepository();
      final weatherViewModel =
          WeatherViewModel(weatherRepository: weatherRepository);

      if (weatherViewModel.load.isCompleted) {
        expect(weatherViewModel.currentWeather, isNotNull);
        expect(weatherViewModel.forecast, isNotNull);
      }
    });

    test('load: should return error if fetch current weather is failed',
        () async {
      final weatherRepository = FakeErrorWeatherRepository();
      final weatherViewModel =
          WeatherViewModel(weatherRepository: weatherRepository);

      if (weatherViewModel.load.isCompleted) {
        expect(weatherViewModel.currentWeather, isNull);
        expect(
          weatherViewModel.load.error!.exception.toString(),
          'Cannot get current weather',
        );
      }
    });

    test('load: should return error if fetch  weather forecast is failed',
        () async {
      final weatherRepository = FakeErrorWeatherRepository();
      final weatherViewModel =
          WeatherViewModel(weatherRepository: weatherRepository);

      if (weatherViewModel.load.isCompleted) {
        expect(weatherViewModel.forecast, isNull);
        expect(
          weatherViewModel.load.error!.exception.toString(),
          'Cannot get weather forecast',
        );
      }
    });

    test('calculateDailyAverageTemperature: should return 4 days forecast',
        () async {
      final weatherRepository = FakeWeatherRepository();
      final weatherViewModel =
          WeatherViewModel(weatherRepository: weatherRepository);
      final dailyAverageTemp =
          weatherViewModel.calculateDailyAverageTemperature(kForecast);

      expect(dailyAverageTemp.length, 4);
    });

    test(
        'calculateDailyAverageTemperature: should return correct average temperature',
        () async {
      final weatherRepository = FakeWeatherRepository();
      final weatherViewModel =
          WeatherViewModel(weatherRepository: weatherRepository);
      final dailyAverageTemp =
          weatherViewModel.calculateDailyAverageTemperature(kForecast);

      expect(dailyAverageTemp.first.temperature.round(), 31);
    });
  });
}
