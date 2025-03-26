enum TemperatureUnits { standard, metric, imperial }

class WeatherRequest {
  final double lat;
  final double lon;
  final TemperatureUnits units;

  WeatherRequest({
    required this.lat,
    required this.lon,
    this.units = TemperatureUnits.metric,
  });
}
