import 'package:weather_demo/domain/models/weather_request.dart';

class OpenWeatherAPI {
  OpenWeatherAPI({required this.apiKey});

  final String apiKey;

  static const String _apiBaseUrl = "api.openweathermap.org";
  static const String _apiPath = "/data/2.5/";

  Uri weather(WeatherRequest params) {
    return _buildUri(
      endpoint: "weather",
      parametersBuilder: () => queryParameters(params),
    );
  }

  Uri forecast(WeatherRequest params) {
    return _buildUri(
      endpoint: "forecast",
      parametersBuilder: () => queryParameters(params),
    );
  }

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      scheme: "https",
      host: _apiBaseUrl,
      path: "$_apiPath$endpoint",
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> queryParameters(WeatherRequest params) {
    return {
      'appid': apiKey,
      'lat': '${params.lat}',
      'lon': '${params.lon}',
      'units': params.units.name,
    };
  }
}
