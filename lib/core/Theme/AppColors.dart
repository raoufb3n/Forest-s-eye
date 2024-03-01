import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const primary = Color(0xff3887BE);
  static const secondary = Color(0xff38419D);
  static const background = Color(0xff200E3A);
  static const button = Color(0xff52D3D8);
  static const onBackground = Color(0xff271245);
  static const grey = Color(0xffD5D2D2);
  static const black = Color(0xff131515);
  static const white = Color(0xffffffff);
  static const neutral = Color(0xff2B2C28);
  static const neutral2 = Color(0xffBCBCBC);

  static ColorScheme lightColorScheme = const ColorScheme.light(
    primary: primary,
    onPrimary: grey,
    secondary: secondary,
    background: background,
    onBackground: onBackground,
    outline: button,
    
  );

  static ColorScheme darkColorScheme = const ColorScheme.dark(
    primary: primary,
    background: black,
  );
}
