


import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.isPass = false,
    this.onChanged,
    this.focusNode,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final bool isPass;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.neutral2, width: 1),
    );
    return TextFormField(
      focusNode: focusNode,
      cursorColor: Colors.black,
      controller: controller,
      obscureText: isPass,
      style: context.bodySmall,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIconConstraints: const BoxConstraints(maxWidth: 60, minWidth: 40),
        hintStyle: context.bodySmall.copyWith(color: AppColors.grey),
      ),
    );
  }
}