import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isEmail = false,
    this.isPassword = false,
    this.suffixIcon = 'Assets/icons/view.png',
    this.onPressed,
    required this.controller,
  });
  final String hintText;
  final bool isEmail;
  final bool isPassword;
  final String suffixIcon;
  final String prefixIcon;
  final Function()? onPressed;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: context.screenWidth,
      child: TextFormField(
        controller: controller,
        obscureText: isPassword ? true : false,
        keyboardType: isEmail ? TextInputType.emailAddress : null,
        decoration: InputDecoration(
          prefixIcon: Container(
            padding: const EdgeInsets.all(8),
            constraints: BoxConstraints(
              minWidth: 14.w,
              maxWidth: 14.w,
              minHeight: 14.h,
              maxHeight: 14.h,
            ),
            child: Image.asset(
              prefixIcon,
              color: Colors.white,
            ),
          ),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: onPressed,
                  icon: Image.asset(
                    suffixIcon,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ))
              : null,
          fillColor: Theme.of(context).colorScheme.onBackground,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          focusColor: Theme.of(context).colorScheme.outline,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ),
      ),
    );
  }
}
