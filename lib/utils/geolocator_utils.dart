import 'package:geolocator/geolocator.dart';

class GeolocatorManager {
  Future<Position> getCurrentPosition({LocationSettings? locationSettings}) {
    return Geolocator.getCurrentPosition(locationSettings: locationSettings);
  }
}
