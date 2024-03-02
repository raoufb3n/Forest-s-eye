import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    required this.minimumSize,
    required this.maximumSize,
  });
  final String label;
  final Function()? onPressed;
  final Size minimumSize;
  final Size maximumSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        style: Theme.of(context).filledButtonTheme.style!.copyWith(
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 4),
              ),
              alignment: Alignment.center,
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.primary),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              minimumSize: MaterialStateProperty.all(minimumSize),
              maximumSize: MaterialStateProperty.all(maximumSize),
            ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 15.sp,
              ),
        ));
  }
}
