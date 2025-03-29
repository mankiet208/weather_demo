import 'package:flutter/material.dart';
import 'package:weather_demo/ui/core/widgets/error_screen.dart';
import 'package:weather_demo/ui/core/widgets/loading_widget.dart';
import 'package:weather_demo/ui/weather/view_models/weather_view_model.dart';
import 'package:weather_demo/ui/weather/widgets/weather_header.dart';
import 'package:weather_demo/ui/weather/widgets/weather_row.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
    super.key,
    required this.viewModel,
  });

  final WeatherViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel.load,
      builder: (context, child) {
        if (viewModel.load.isRunning) {
          return Center(
            child: LoadingWidget(),
          );
        }

        if (viewModel.load.hasError) {
          return ErrorScreen(
            onTapRetry: () async {
              viewModel.load.clearResult();
              await viewModel.load.execute();
            },
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WeatherHeader(
              temperature: viewModel.currentWeather?.main.temp ?? 0,
              location: viewModel.currentWeather?.name ?? '',
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: viewModel.dailyAverageTemperatures.length,
                itemBuilder: (context, index) {
                  final item = viewModel.dailyAverageTemperatures[index];

                  return WeatherRow(
                    date: item.dateTime,
                    temperature: item.temperature,
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
