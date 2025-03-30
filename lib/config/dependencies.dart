import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:weather_demo/config/secrets.dart';
import 'package:weather_demo/data/repositories/weather/weather_repository.dart';
import 'package:weather_demo/data/repositories/weather/weather_repository_imp.dart';
import 'package:weather_demo/data/services/api/weather/http_weather_service.dart';
import 'package:weather_demo/data/services/api/weather/open_weather_api.dart';
import 'package:http/http.dart' as http;
import 'package:weather_demo/data/services/api/weather/weather_service.dart';
import 'package:weather_demo/ui/home/view_models/home_view_model.dart';
import 'package:weather_demo/ui/weather/view_models/weather_view_model.dart';
import 'package:weather_demo/utils/geolocator_utils.dart';

List<SingleChildWidget> get providerRemote {
  return [
    Provider(
      create: (context) => GeolocatorManager(),
    ),
    Provider(
      create: (context) => OpenWeatherAPI(
        apiKey: Secrets.OPEN_WEATHER_API_KEY.value,
      ),
    ),
    Provider(
      create: (context) => http.Client(),
    ),
    Provider(
      create: (context) => HttpWeatherService(
        api: context.read(),
        client: context.read(),
      ) as WeatherService,
    ),
    Provider(
      create: (context) => WeatherRepositoryImp(
        service: context.read(),
      ) as WeatherRepository,
    ),
    ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
    ),
    ChangeNotifierProvider(
      create: (context) => WeatherViewModel(
        weatherRepository: context.read(),
        geolocatorManager: context.read(),
      ),
    ),
  ];
}
