
import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider(
      {super.key,
      this.color = AppColors.grey,
      this.thickness = 1,
      this.height = 0});
  final Color color;
  final double thickness;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
      height: height,
    );
  }
}