import 'package:dravya/utils/constants/image_strings.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/constants/text_strings.dart';
import 'package:dravya/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back,
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpacing),
          child: Column(
            children: [
              // Image with 60% OF Screen width
              Image(
                image: AssetImage(DImages.emailVerifyImage),
                width: DHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: DSizes.spaceBtwSections),
              // Title and SubTitle
              Text(
                DTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),

              Text(
                DTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(DTexts.done),
                ),
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(DTexts.tResendEmailLink),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
