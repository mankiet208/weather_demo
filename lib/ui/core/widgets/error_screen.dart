import 'package:flutter/material.dart';
import 'package:weather_demo/ui/core/themes/dimens.dart';
import 'package:weather_demo/utils/extensions/context_extension.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.onTapRetry,
  });

  final VoidCallback onTapRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.error,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              context.appLocalizations!.error_somethingWrong,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.w100,
                color: context.colorScheme.onError,
              ),
            ),
          ),
          const SizedBox(height: 44),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(),
              backgroundColor: context.colorScheme.surfaceContainer,
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.padding,
                horizontal: Dimensions.largePadding,
              ),
            ),
            child: Text(
              context.appLocalizations!.general_retry,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
