import 'package:dravya/common/widgets/appbar/appbar.dart';
import 'package:dravya/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:dravya/utils/constants/colors.dart';
import 'package:dravya/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class DHomeAppBar extends StatelessWidget {
  const DHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: DColors.grey),
          ),
          Text(
            DTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: DColors.white),
          ),
        ],
      ),
      actions: [DCartCounterIcon(iconColor: DColors.white, onPressed: () {})],
    );
  }
}
