import 'package:dravya/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:dravya/common/widgets/custom_shapes/container/search_container.dart';
import 'package:dravya/common/widgets/image_text/vertical_image_text.dart';
import 'package:dravya/common/widgets/texts/section_heading.dart';

import 'package:dravya/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:dravya/features/shop/screens/home/widgets/home_categories.dart';
import 'package:dravya/utils/constants/colors.dart';
import 'package:dravya/utils/constants/image_strings.dart';
import 'package:dravya/utils/constants/sizes.dart';
import 'package:dravya/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DPrimaryHeaderContainer(
              child: Column(
                children: [
                  DHomeAppBar(),
                  const SizedBox(height: DSizes.spaceBtwInputFields),
                  DSearchContainer(
                    text: "Search in Store ",
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(height: DSizes.spaceBtwInputFields),

                  Padding(
                    padding: EdgeInsets.only(left: DSizes.defaultSpacing),
                    child: Column(
                      children: [
                        DSectionHeading(
                          title: "Popular Categories ",
                          showActionButton: false,
                        ),
                        const SizedBox(height: DSizes.spaceBtwItems),

                        DHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
