import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/utils/geolocator/error/location_denied_forever_exception.dart.dart';

class GeolocatorUtils {
  static Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error(LocationServiceDisabledException());
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error(PermissionDeniedException(null));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(PermissionDeniedForeverException(null));
    }

    return await Geolocator.getCurrentPosition();
  }
}
