import 'package:flutter_test/flutter_test.dart';
import 'package:weather_demo/data/services/api/api_exception.dart';
import 'package:weather_demo/data/services/api/weather/http_weather_service.dart';
import 'package:weather_demo/data/services/api/weather/open_weather_api.dart';
import 'package:weather_demo/data/services/api/weather/weather_service.dart';
import 'package:weather_demo/utils/result.dart';

import '../../mocks/mocks.dart';
import '../../mocks/models/forecast.dart';
import '../../mocks/models/request.dart';
import '../../mocks/models/weather.dart';

void main() {
  group('ApiClient', () {
    late OpenWeatherAPI api;
    late MockHttpClient mockHttpClient;
    late WeatherService weatherService;

    setUp(() {
      api = OpenWeatherAPI(apiKey: 'API_KEY');
      mockHttpClient = MockHttpClient();
      weatherService = HttpWeatherService(
        api: api,
        client: mockHttpClient,
      );
    });

    test('getCurrentWeather: Should get current weather by coordinate',
        () async {
      mockHttpClient.mockGet(
        url: api.weather(kRequest),
        object: kWeather,
      );

      final result = await weatherService.getCurrentWeather(kRequest);

      expect(result.asOk.value, kWeather);
    });

    test(
        'getCurrentWeather: Should get InvalidApiKeyException if status code is 401',
        () async {
      mockHttpClient.mockGetError(
        url: api.weather(kRequest),
        statusCode: 401,
      );

      final result = await weatherService.getCurrentWeather(kRequest);

      expect(result.asError.exception.runtimeType, InvalidApiKeyException);
    });

    test(
        'getCurrentWeather: Should get UnknownException if status code is not handled',
        () async {
      mockHttpClient.mockGetError(
        url: api.weather(kRequest),
        statusCode: 405,
      );

      final result = await weatherService.getCurrentWeather(kRequest);

      expect(result.asError.exception.runtimeType, UnknownException);
    });

    test('getWeatherForecast: Should get  weather forecast by coordinate',
        () async {
      mockHttpClient.mockGet(
        url: api.forecast(kRequest),
        object: kForecast,
      );

      final result = await weatherService.getWeatherForecast(kRequest);
      final resultForecastList = result.asOk.value.list;

      expect(resultForecastList.length, kForecast.list.length);
      expect(resultForecastList.first, kForecast.list.first);
    });
  });
}
