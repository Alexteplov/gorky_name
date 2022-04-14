import 'package:flutter/material.dart';
import 'package:gorky_name/internal/theme/components_style.dart';
import 'package:gorky_name/internal/theme/theme_colors.dart';

class CustomTheme {
  static ThemeData get lightTheme => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: ThemeColors.white,
              onPrimary: ThemeColors.black,
              textStyle: ElButTextStyle.elBTextStyle),
        ),
      );
}
