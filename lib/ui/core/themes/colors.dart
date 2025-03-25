import 'package:flutter/material.dart';

abstract final class AppColors {
  static const Color primary = Colors.blue;
  static const Color white1 = Colors.white;
  static const Color white2 = Color(0xFFF5F6F7);
  static const Color black1 = Color(0xFF2A2A2A);
  static const Color black2 = Color(0xFF4A4A4A);
  static const Color grey1 = Color(0xFF717171);
  static const Color blue1 = Color(0xFF556799);
  static const Color red1 = Color(0xFFE85959);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: white1,
    secondary: white1,
    onSecondary: black1,
    surface: white2, // background
    onSurface: black1,
    surfaceContainer: black2,
    error: red1,
    onError: white1,
    outline: grey1,
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: white1,
    secondary: white1,
    onSecondary: black1,
    surface: black1, // background
    onSurface: white1,
    surfaceContainer: black2,
    error: red1,
    onError: white1,
    outline: grey1,
  );
}
