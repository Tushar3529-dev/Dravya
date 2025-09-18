import 'package:dravya/utils/constants/colors.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/device/device_utility.dart';
import 'package:dravya/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class DSearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackgroud, showBorder;

  const DSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackgroud = true,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DSizes.defaultSpacing),
      child: Container(
        width: DDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(DSizes.md),
        decoration: BoxDecoration(
          color: showBackgroud
              ? dark
                    ? DColors.dark
                    : DColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(DSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: DColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: DColors.darkerGrey),

            const SizedBox(width: DSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
