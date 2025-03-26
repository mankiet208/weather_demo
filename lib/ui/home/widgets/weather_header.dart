import 'package:flutter/material.dart';
import 'package:weather_demo/ui/core/themes/colors.dart';
import 'package:weather_demo/utils/extensions/context_extension.dart';

class WeatherHeader extends StatelessWidget {
  const WeatherHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 56),
        Text(
          '20',
          style: TextStyle(
            color: context.colorScheme.onSurface,
            fontSize: 96,
            fontWeight: FontWeight.w900,
            height: 1.2,
          ),
        ),
        Text(
          'Bangalore',
          style: TextStyle(
            color: AppColors.blue1,
            fontSize: 36,
            fontWeight: FontWeight.w100,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 62),
      ],
    );
  }
}
