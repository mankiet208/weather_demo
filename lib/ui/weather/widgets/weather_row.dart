import 'package:flutter/material.dart';
import 'package:weather_demo/ui/core/themes/dimens.dart';
import 'package:weather_demo/utils/extensions/context_extension.dart';
import 'package:weather_demo/utils/extensions/date_time_extension.dart';
import 'package:weather_demo/utils/extensions/string_extension.dart';

class WeatherRow extends StatelessWidget {
  const WeatherRow({
    super.key,
    required this.date,
    required this.temperature,
  });

  final DateTime date;
  final double temperature;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.padding,
      ),
      child: Row(
        children: [
          Text(
            date.getWeekDayName(),
            style: TextStyle(
              color: context.colorScheme.onSurface,
              fontSize: 16,
              height: 1.2,
            ),
          ),
          Spacer(),
          Text(
            '${temperature.round()}'.addDegreeSymbol(),
            style: TextStyle(
              color: context.colorScheme.onSurface,
              fontSize: 16,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
