import 'package:weather_demo/domain/models/forecast/forecast.dart';
import 'package:weather_demo/domain/models/weather/weather.dart';

final kForecast = Forecast(
  city: ForecastCity(
    name: 'Mountain View',
  ),
  list: [
    // Day 1
    Weather(
      dt: 1743181200,
      main: WeatherMain(
        temp: 35,
      ),
    ),
    Weather(
      dt: 1743192000,
      main: WeatherMain(
        temp: 32,
      ),
    ),
    Weather(
      dt: 1743202800,
      main: WeatherMain(
        temp: 29,
      ),
    ),
    Weather(
      dt: 1743213600,
      main: WeatherMain(
        temp: 27,
      ),
    ),
    // Day 2
    Weather(
      dt: 1743267600,
      main: WeatherMain(
        temp: 29,
      ),
    ),
    // Day 3
    Weather(
      dt: 1743354000,
      main: WeatherMain(
        temp: 30,
      ),
    ),
    // Day 4
    Weather(
      dt: 1743440400,
      main: WeatherMain(
        temp: 32,
      ),
    ),
    // Day 5
    Weather(
      dt: 1743526800,
      main: WeatherMain(
        temp: 33,
      ),
    ),
  ],
);
