import 'package:flutter/material.dart';
import 'package:weather_demo/ui/core/themes/dimens.dart';
import 'package:weather_demo/utils/extensions/context_extension.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({
    super.key,
    required this.permissionTitle,
    this.permissionSubtitle,
    this.onTapOpenSetting,
    this.onTapTryAgain,
  });

  final String permissionTitle;
  final String? permissionSubtitle;
  final VoidCallback? onTapOpenSetting;
  final VoidCallback? onTapTryAgain;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          permissionTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: context.colorScheme.onSurface,
          ),
        ),
        if (permissionSubtitle != null) ...[
          Text(
            permissionSubtitle!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: context.colorScheme.onSurface,
            ),
          ),
        ],
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: onTapTryAgain,
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
            const SizedBox(
              width: Dimensions.largePadding,
            ),
            FilledButton(
              onPressed: onTapOpenSetting,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(),
                backgroundColor: context.colorScheme.surfaceContainer,
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.padding,
                  horizontal: Dimensions.largePadding,
                ),
              ),
              child: Text(
                context.appLocalizations!.general_openSetting,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
