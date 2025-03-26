import 'dart:convert';
import 'dart:io';

import 'package:weather_demo/data/api_exception.dart';
import 'package:weather_demo/data/services/weather/open_weather_api.dart';
import 'package:weather_demo/data/services/weather/weather_service.dart';
import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';
import 'package:weather_demo/domain/models/weather_request.dart';
import 'package:weather_demo/utils/result.dart';
import 'package:http/http.dart' as http;

class HttpWeatherService implements WeatherService {
  HttpWeatherService({
    required OpenWeatherAPI api,
    required http.Client client,
  })  : _api = api,
        _client = client;

  final OpenWeatherAPI _api;
  final http.Client _client;

  @override
  Future<Result<Weather>> getCurrentWeather(WeatherRequest request) {
    return _getData(
      uri: _api.weather(request),
      builder: (data) => Weather.fromJson(data),
    );
  }

  @override
  Future<Result<Forecast>> getWeatherForecast5Days(WeatherRequest request) {
    return _getData(
      uri: _api.forecast(request),
      builder: (data) => Forecast.fromJson(data),
    );
  }

  Future<Result<T>> _getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await _client.get(uri);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body);
          return Result.ok(builder(data));
        case 401:
          return Result.error(InvalidApiKeyException());
        default:
          return Result.error(UnknownException());
      }
    } on SocketException catch (_) {
      return Result.error(NoInternetConnectionException());
    }
  }
}
