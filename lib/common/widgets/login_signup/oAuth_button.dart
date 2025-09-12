import 'package:dravya/utils/constants/colors.dart';
import 'package:dravya/utils/constants/image_strings.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class DSocialButtons extends StatelessWidget {
  const DSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: DColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: DSizes.iconMd,
              height: DSizes.iconMd,
              image: AssetImage(DImages.googleLogo),
            ),
          ),
        ),
        const SizedBox(width: DSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: DColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: DSizes.iconLg,
              height: DSizes.iconLg,

              image: AssetImage(DImages.facebookLogo),
            ),
          ),
        ),
      ],
    );
  }
}
