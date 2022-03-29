import 'package:flutter/material.dart';
import 'package:gorky_name/ui/theme/theme_colors.dart';

class CustomTheme {
  static ThemeData get lightTheme => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: ThemeColors.white,
                onPrimary: ThemeColors.black,
                textStyle: const TextStyle(
                    color: ThemeColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 52))),
      );
}
