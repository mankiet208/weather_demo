import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Secrets { OPEN_WEATHER_API_KEY }

extension SecretsExtension on Secrets {
  String get value {
    return dotenv.get(name);
  }
}
