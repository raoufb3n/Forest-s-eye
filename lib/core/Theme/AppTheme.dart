

import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        titleTextStyle: TextStyle(color: AppColors.black),
        iconTheme: IconThemeData(color: AppColors.black),
      ),
      textTheme: AppText.lightThemeText,
      colorScheme: AppColors.lightColorScheme,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 20.w,
          ),
          side: const BorderSide(color: AppColors.neutral2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.button,
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 20.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ));

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: AppText.darkThemeText,
    colorScheme: AppColors.darkColorScheme,
  );
}