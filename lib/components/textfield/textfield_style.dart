import 'package:flutter/material.dart';

class MyTextFieldStyle {
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Widget? preIcon;
  final Widget? contentPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isSuffIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  MyTextFieldStyle(
      {this.focusedBorder,
      this.textInputAction,
      this.enabledBorder,
      this.contentPadding,
      this.preIcon,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.validator,
      this.isSuffIcon = false,
      this.onChanged,
      this.hintStyle,
      this.keyboardType});
}

// ignore: non_constant_identifier_names
Widget MyTextField(
    MyTextFieldStyle
        myTextFieldStyle, // padding: const EdgeInsets.only(left: 16,right: 16),
    {bool? isPassword = true,
    TextEditingController? controller,
    obscuringCharacter = '.',
    TextInputAction? textInputAction,
    MyTextFieldStyle? style}) {
  return TextFormField(
    keyboardType: style?.keyboardType,
    textInputAction: style?.textInputAction,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 12),
      hintText: style?.hintText,
      hintStyle: const TextStyle(
        fontFamily: 'SVN-Century Gothic',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 1,
      ),
      focusedBorder: style?.focusedBorder ??
          const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(color: Color(0xff1996D4)),
          ),
      enabledBorder: style?.enabledBorder ??
          const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: Color(0xff858A90))),
      icon: style?.preIcon,
      prefixIcon: style?.prefixIcon,
      suffixIcon: style?.suffixIcon,
    ),
  );
}
