// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

class ThemeMain {
  ThemeData getDefaultTheme(BuildContext context) {
    ThemeData defaultTheme = ThemeData(
      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
      brightness: Brightness.light,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        foregroundColor: TColors.neutral70,
        actionsIconTheme: const IconThemeData(size: 28, color: TColors.neutral50),
        iconTheme: const IconThemeData(size: 28, color: TColors.neutral70),
        titleTextStyle: TText.subHeadingBold(color: TColors.neutral70),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: TColors.primaryColor,
        background: TColors.baseWhite,
        error: TColors.redMain,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: TColors.baseWhite,
        selectedLabelStyle: TText.bodyXXSRegular(color: TColors.neutral70),
        selectedItemColor: TColors.primaryColor,
        unselectedItemColor: TColors.neutral40,
        unselectedLabelStyle: TText.bodyXXSRegular(color: TColors.neutral40),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: TColors.primaryColor,
        foregroundColor: TColors.baseWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black.withOpacity(0.7), displayColor: TColors.neutral50),
    );
    return defaultTheme;
  }
}
