import 'package:dravya/common/styles/spacing_styles.dart';
import 'package:dravya/common/widgets/login_signup/oAuth_button.dart';
import 'package:dravya/features/authentication/screens/login/widgets/login_form.dart';
import 'package:dravya/common/widgets/login_signup/form_divider.dart';
import 'package:dravya/features/authentication/screens/login/widgets/login_header.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: DSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //// Logo , Title & Sub-Title
              const DLoginHeader(),

              // Form
              const DLoginForm(),

              // Divider
              const DFormDivider(),

              const SizedBox(height: DSizes.spaceBtwSections),
              // Footer
              const DSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
