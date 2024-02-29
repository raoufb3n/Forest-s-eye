

import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton(
      {super.key, required this.text, required this.press, this.isDisabled});

  final String text;
  final VoidCallback press;
  final bool? isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          text,
          style: context.bodySmall,
        ),
      ),
    );
  }
}