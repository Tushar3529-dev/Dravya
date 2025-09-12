import 'package:dravya/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class DSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: DSizes.appBarHeight,
    left: DSizes.defaultSpacing,
    bottom: DSizes.defaultSpacing,
    right: DSizes.defaultSpacing,
  );
}
