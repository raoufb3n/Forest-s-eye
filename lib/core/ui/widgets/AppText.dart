


import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.text,
    this.style,
    this.color,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: style ??
            context.bodyMedium.copyWith(color: color ?? AppColors.white),
      ),
    );
  }
}