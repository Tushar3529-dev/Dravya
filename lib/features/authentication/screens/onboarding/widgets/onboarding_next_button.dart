import 'package:dravya/features/authentication/controller/onboarding_controller.dart';
import 'package:dravya/utils/constants/colors.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/device/device_utility.dart';
import 'package:dravya/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);
    return Positioned(
      right: DSizes.defaultSpacing,
      bottom: DDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? DColors.light : Colors.black,
        ),
        child: Icon(
          Iconsax.arrow_right_3,
          color: dark ? DColors.dark : DColors.light,
        ),
      ),
    );
  }
}
