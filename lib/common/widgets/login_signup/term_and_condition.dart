import 'package:dravya/utils/constants/colors.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/constants/text_strings.dart';
import 'package:dravya/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class DTermAndConditionsCheckbox extends StatelessWidget {
  const DTermAndConditionsCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,

          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: DSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: DTexts.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: DTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? DColors.white : DColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? DColors.white : DColors.primary,
                ),
              ),
              TextSpan(
                text: DTexts.and,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: DTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? DColors.white : DColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? DColors.white : DColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
