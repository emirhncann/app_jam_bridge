import 'package:flutter/material.dart';
import 'package:peermatching/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:peermatching/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:peermatching/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:peermatching/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
        50: Color(0x1AFFE200),
        100: Color(0x1AFFE200),
        200: Color(0x1AFFE200),
        300: Color(0x1AFFE200),
        400: Color(0x1AFFE200),
        500: Color(0x1AFFE200),
        600: Color(0x1AFFE200),
        700: Color(0x1AFFE200),
        800: Color(0x1AFFE200),
        900: Color(0x1AFFE200),
      }),
      textTheme: TTextTheme.lightTextTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme);
}
