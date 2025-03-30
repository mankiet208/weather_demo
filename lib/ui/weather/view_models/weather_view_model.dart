import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/data/repositories/weather/weather_repository.dart';
import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/temperature_by_date.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';
import 'package:weather_demo/domain/models/weather_request.dart';
import 'package:weather_demo/utils/command.dart';
import 'package:weather_demo/utils/result.dart';

class _ListTemperatureByDate {
  final DateTime dateTime;
  final List<double> temperatures;

  _ListTemperatureByDate({
    required this.dateTime,
    required this.temperatures,
  });
}

class WeatherViewModel extends ChangeNotifier {
  WeatherViewModel({
    required WeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository {
    load = Command0(_load)..execute();
  }

  final WeatherRepository _weatherRepository;

  late Command0 load;

  Weather? _currentWeather;
  Forecast? _forecast;
  List<TemperatureByDate> _dailyAverageTemperatures = [];

  Weather? get currentWeather => _currentWeather;
  Forecast? get forecast => _forecast;
  List<TemperatureByDate> get dailyAverageTemperatures =>
      _dailyAverageTemperatures;

  Future<Result> _load() async {
    final position = await Geolocator.getCurrentPosition();
    final request = WeatherRequest(
      lat: position.latitude,
      lon: position.longitude,
    );

    final currentWeatherResult =
        await _weatherRepository.getCurrentWeather(request);

    switch (currentWeatherResult) {
      case Ok<Weather>():
        _currentWeather = currentWeatherResult.value;
      case Error<Weather>():
        return currentWeatherResult;
    }

    final forecastResult = await _weatherRepository.getWeatherForecast(request);

    switch (forecastResult) {
      case Ok<Forecast>():
        _forecast = forecastResult.value;
      case Error<Forecast>():
        return forecastResult;
    }

    _dailyAverageTemperatures = calculateDailyAverageTemperature(_forecast!);

    return Result.ok(null);
  }

  List<TemperatureByDate> calculateDailyAverageTemperature(Forecast forecast) {
    if (forecast.list.isEmpty) return [];

    // Group temperature by date
    Map<DateTime, List<double>> mapTemperaturesByDate = {};
    for (var weather in forecast.list) {
      final int timestamp = weather.dt;
      final double temp = weather.main.temp;

      final DateTime date =
          DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      final DateTime dateOnly = DateTime(date.year, date.month, date.day);

      if (!mapTemperaturesByDate.containsKey(dateOnly)) {
        mapTemperaturesByDate[dateOnly] = [];
      }
      mapTemperaturesByDate[dateOnly]!.add(temp);
    }

    // Convert to list
    final listTemperaturesByDate = mapTemperaturesByDate.entries
        .map(
          (entry) => _ListTemperatureByDate(
            dateTime: entry.key,
            temperatures: entry.value,
          ),
        )
        .toList();

    listTemperaturesByDate.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    // Remove today forecast if any
    final today = DateTime.now();
    if (listTemperaturesByDate.first.dateTime.day == today.day) {
      listTemperaturesByDate.removeAt(0);
    }

    // Remove data so that there are no more than 4 entries
    if (listTemperaturesByDate.length > 4) {
      listTemperaturesByDate.length -= listTemperaturesByDate.length - 4;
    }

    // Calculate the average temperature for each day
    List<TemperatureByDate> dailyAverages = [];
    for (var item in listTemperaturesByDate) {
      final double avgTemp =
          item.temperatures.reduce((a, b) => a + b) / item.temperatures.length;

      dailyAverages.add(
        TemperatureByDate(
          dateTime: item.dateTime,
          temperature: avgTemp,
        ),
      );
    }

    return dailyAverages;
  }
}
