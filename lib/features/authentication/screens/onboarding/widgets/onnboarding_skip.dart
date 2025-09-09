import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DDeviceUtils.getAppBarHeight(),
      right: DSizes.defaultSpacing,
      child: TextButton(onPressed: () {}, child: const Text("Skip")),
    );
  }
}
