import 'package:dravya/common/widgets/login_signup/form_divider.dart';
import 'package:dravya/common/widgets/login_signup/oAuth_button.dart';
import 'package:dravya/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                DTexts.tSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: DSizes.spaceBtwSections),

              // Form
              DSignupForm(),
              const SizedBox(height: DSizes.spaceBtwSections),
              // Divider
              DFormDivider(dividerText: DTexts.tOrSignUpWith.capitalize!),
              const SizedBox(height: DSizes.spaceBtwSections),

              // Social Buttons
              const DSocialButtons(),
              const SizedBox(height: DSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
