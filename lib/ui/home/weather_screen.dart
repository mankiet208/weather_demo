import 'package:flutter/material.dart';
import 'package:weather_demo/ui/home/widgets/weather_header.dart';
import 'package:weather_demo/ui/home/widgets/weather_row.dart';
import 'package:weather_demo/utils/extensions/context_extension.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WeatherHeader(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  WeatherRow(),
                  WeatherRow(),
                  WeatherRow(),
                  WeatherRow(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
