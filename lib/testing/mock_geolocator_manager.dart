import 'package:mocktail/mocktail.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/utils/geolocator_utils.dart';

class MockGeolocatorManager extends Mock implements GeolocatorManager {
  @override
  Future<Position> getCurrentPosition({LocationSettings? locationSettings}) {
    return Future.value(
      Position(
        latitude: 37.7749,
        longitude: -122.4194,
        timestamp: DateTime.now(),
        accuracy: 10.0,
        altitude: 0.0,
        heading: 0.0,
        speed: 0.0,
        speedAccuracy: 0.0,
        altitudeAccuracy: 0,
        headingAccuracy: 0,
      ),
    );
  }
}
