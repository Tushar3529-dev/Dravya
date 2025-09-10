import 'package:dravya/features/authentication/controller/onboarding_controller.dart';
import 'package:dravya/utils/constants/colors.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/device/device_utility.dart';
import 'package:dravya/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = DHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: DDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: DSizes.defaultSpacing,

      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? DColors.light : DColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pagecontroller,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
