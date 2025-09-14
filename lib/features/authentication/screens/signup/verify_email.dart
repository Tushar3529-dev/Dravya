import 'package:dravya/common/widgets/success_screen/success_screen.dart';
import 'package:dravya/features/authentication/screens/login/login.dart';
import 'package:dravya/utils/constants/image_strings.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/constants/text_strings.dart';
import 'package:dravya/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpacing),
          child: Column(
            children: [
              Image(
                image: AssetImage(DImages.signUpVerifyImage),
                width: DHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: DSizes.spaceBtwSections),
              // Title and SubTitle
              Text(
                DTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(
                'support@Tushar3529-dev.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(
                DTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: DImages.signUpVerifyImage,
                      title: DTexts.yourAccountCreatedTitle,
                      subTitle: DTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(DTexts.tContinue),
                ),
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(DTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
