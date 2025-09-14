import 'package:dravya/common/widgets/login_signup/term_and_condition.dart';
import 'package:dravya/features/authentication/screens/signup/verify_email.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';

class DSignupForm extends StatelessWidget {
  const DSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: DTexts.tFirstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: DSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: DTexts.tLastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: DTexts.tUsername,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),
          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: DTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),
          //Phone NUmber
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: DTexts.tPhoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),
          //Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: DTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          // Term & Condition CheckBox
          const DTermAndConditionsCheckbox(),
          const SizedBox(height: DSizes.spaceBtwSections),
          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: const Text(DTexts.tCreateAccount),
            ),
          ),
        ],
      ),
    );
  }
}
