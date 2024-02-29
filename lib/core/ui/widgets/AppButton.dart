
import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.press,
    this.isDisabled = false,
  });

  final String text;
  final VoidCallback press;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {},
        child: Text(
          text,
          style: context.bodyMedium.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}