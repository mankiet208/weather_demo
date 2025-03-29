import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/utils/command.dart';
import 'package:weather_demo/utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    checkPermission = Command0(_checkLocationPermission)..execute();
  }

  late Command0 checkPermission;

  bool _locationPermissionGranted = false;

  bool get locationPermissionGranted => _locationPermissionGranted;

  Future<Result> _checkLocationPermission() async {
    _locationPermissionGranted = false;
    var permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Result.error(PermissionDeniedException(null));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Result.error(PermissionDeniedException(null));
    }

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      _locationPermissionGranted = true;
      return Result.ok(null);
    } else {
      return Result.error(Exception(permission.name));
    }
  }
}
