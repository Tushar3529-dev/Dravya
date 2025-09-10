import 'package:dravya/features/authentication/controller/onboarding_controller.dart';
import 'package:dravya/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:dravya/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:dravya/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:dravya/features/authentication/screens/onboarding/widgets/onnboarding_skip.dart';
import 'package:dravya/utils/constants/image_strings.dart';

import 'package:dravya/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizonatal Scrollable Pages
          PageView(
            controller: controller.pagecontroller,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: DImages.onBoardingImage1,
                title: DTexts.tOnBoardingTitle1,
                subTitle: DTexts.tOnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: DImages.onBoardingImage2,
                title: DTexts.tOnBoardingTitle2,
                subTitle: DTexts.tOnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: DImages.onBoardingImage3,
                title: DTexts.tOnBoardingTitle3,
                subTitle: DTexts.tOnBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const onBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
