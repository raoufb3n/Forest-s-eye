import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.label,
    this.onPressed,
  });
  final String label;
  final Function()? onPressed;

  

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
              minimumSize: MaterialStateProperty.all(
                const Size(double.infinity, 45),
              ),
              maximumSize: MaterialStateProperty.all(
                const Size(double.infinity, 45),
              ),
            ),
        child: Text(
          'Login',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 15.sp,
              ),
        ));
  }
}
