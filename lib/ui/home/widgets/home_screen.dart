import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather_demo/ui/core/widgets/loading_widget.dart';
import 'package:weather_demo/ui/home/view_models/home_view_model.dart';
import 'package:weather_demo/ui/weather/widgets/weather_screen.dart';
import 'package:weather_demo/ui/core/widgets/permission_screen.dart';
import 'package:weather_demo/utils/extensions/context_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.viewModel,
  });

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: SafeArea(
        child: ListenableBuilder(
          listenable: viewModel.checkPermission,
          builder: (context, child) {
            if (viewModel.checkPermission.isRunning) {
              return Center(
                child: LoadingWidget(),
              );
            }

            if (viewModel.checkPermission.hasError) {
              final bool isLocationPermissionDenied = viewModel.checkPermission
                  .error!.exception is PermissionDeniedException;

              if (isLocationPermissionDenied) {
                return PermissionScreen(
                  permissionTitle:
                      context.appLocalizations!.error_permissionLocationDenied,
                  permissionSubtitle:
                      context.appLocalizations!.error_permissionLocationEnable,
                  onTapTryAgain: () async {
                    viewModel.checkPermission.clearResult();
                    await viewModel.checkPermission.execute();
                  },
                  onTapOpenSetting: () async {
                    await Geolocator.openAppSettings();
                  },
                );
              } else {
                return PermissionScreen(
                  permissionTitle:
                      context.appLocalizations!.error_permissionLocationUnknown,
                  permissionSubtitle: null,
                  onTapTryAgain: null,
                  onTapOpenSetting: null,
                );
              }
            }

            return child!;
          },
          child: WeatherScreen(
            viewModel: context.read(),
          ),
        ),
      ),
    );
  }
}
