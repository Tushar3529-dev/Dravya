import 'package:dravya/common/widgets/image_text/vertical_image_text.dart';
import 'package:dravya/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class DHomeCategories extends StatelessWidget {
  const DHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return DVerticalImageText(
            title: 'Shoes Category',

            image: DImages.sportIcon,
          );
        },
      ),
    );
  }
}
