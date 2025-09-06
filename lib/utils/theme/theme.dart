import 'package:dravya/utils/theme/chip_theme.dart';
import 'package:dravya/utils/theme/custome_themes/appbar_theme.dart';
import 'package:dravya/utils/theme/custome_themes/bottom_sheet_them.dart';
import 'package:dravya/utils/theme/custome_themes/elevated_button_theme.dart';
import 'package:dravya/utils/theme/custome_themes/outlined_button_theme.dart';
import 'package:dravya/utils/theme/custome_themes/text_field_theme.dart';
import 'package:dravya/utils/theme/custome_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DAppTheme {
  DAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: DTextTheme.lightTextTheme,
    chipTheme: DChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: DAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: DOutLinedButtonTheme.lightOutlinedButtonThemeData,
    inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: DTextTheme.darkTextTheme,
    chipTheme: DChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: DAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: DBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: DOutLinedButtonTheme.darkOutlinedButtonThemeData,
    inputDecorationTheme: DTextFormFieldTheme.darkInputDecorationTheme,
  );
}
