import 'package:flutter_test/flutter_test.dart';
import 'package:weather_demo/data/repositories/weather/weather_repository.dart';
import 'package:weather_demo/testing/data/repositories/mock_weather_repository.dart';
import 'package:weather_demo/testing/mock_geolocator_manager.dart';
import 'package:weather_demo/testing/models/forecast.dart';
import 'package:weather_demo/ui/weather/view_models/weather_view_model.dart';
import 'package:weather_demo/utils/geolocator_utils.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late GeolocatorManager geolocatorManager;
  late WeatherRepository weatherRepository;
  late WeatherViewModel weatherViewModel;

  group('WeatherViewModel tests', () {
    setUp(() {
      geolocatorManager = MockGeolocatorManager();
      weatherRepository = MockWeatherRepository();
      weatherViewModel = WeatherViewModel(
        weatherRepository: weatherRepository,
        geolocatorManager: geolocatorManager,
      );
    });

    test('load: should fetch the current weather and forecast', () async {
      if (weatherViewModel.load.isCompleted) {
        expect(weatherViewModel.currentWeather, isNotNull);
        expect(weatherViewModel.forecast, isNotNull);
      }
    });

    test('load: should return error if fetch current weather is failed',
        () async {
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
      final dailyAverageTemp =
          weatherViewModel.calculateDailyAverageTemperature(kForecast);

      expect(dailyAverageTemp.length, 4);
    });

    test(
        'calculateDailyAverageTemperature: should return correct average temperature',
        () async {
      final dailyAverageTemp =
          weatherViewModel.calculateDailyAverageTemperature(kForecast);

      expect(dailyAverageTemp.first.temperature.round(), 31);
    });
  });
}
