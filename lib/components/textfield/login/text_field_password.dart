import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../constants/text.dart';
import '../../../constants/values.dart';

class TextFieldPassword extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  final void Function(String)? onFieldSubmitted;

  const TextFieldPassword(
      {this.controller,
      this.validator,
      this.onFieldSubmitted,
      this.onChanged,
      super.key});

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  bool isPassword = true;

  String? _checkPassword(value) {
    // if (value!.length < 1) {
    //   isLogin = false;
    //   return null;
    // }

    if (value == null || value.isEmpty) {
      isLogin = false;

      return txtIsEmpty;
    }
    //  else if (!isPasswordValid(value)) {
    //   isLogin = false;

    //   return validatePass;
    //   // return "6 - 32 characters long\nAt least 1 number\nAt least 1 special character";
    // }
    isLogin = true;

    return null;
  }

  void _onChange(value) {}

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 1),
      obscureText: isPassword,
      validator: widget.validator ?? _checkPassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.done,

      // keyboardAppearance: Brightness.dark,
      autocorrect: true,
      onChanged: widget.onChanged ?? _onChange,
      controller: widget.controller,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        hintText: "Mật khẩu*",
        hintStyle: const TextStyle(
            fontFamily: fontFamily,
            color: Color(0xffC6CCD3),
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 1),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        prefixIcon: const Icon(Ionicons.lock_closed_outline,
            size: 20, color: Color(0xff3169B3)),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffC6CCD3), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xff858A90), width: 1)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffD92128), width: 1)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffD92128), width: 1)),
      ),
    );
  }

  String validatePass = "";
  bool isPasswordValid(String password) {
    final containsUpperCase = RegExp(r'[A-Z]').hasMatch(password);
    final containsLowerCase = RegExp(r'[a-z]').hasMatch(password);
    final containsNumber = RegExp(r'\d').hasMatch(password);
    final containsSymbols =
        RegExp(r'[`~!@#$%\^&*\(\)_+\\\-={}\[\]\/.,<>;]').hasMatch(password);
    final hasManyCharacters = RegExp(r'^.{6,50}$', dotAll: true)
        .hasMatch(password); // This is variable

    if (!containsUpperCase) validatePass = "    1 uppercase letter\n";
    // if (!containsLowerCase) validatePass = "$validatePass\n";
    if (!containsSymbols) {
      validatePass =
          "$validatePass    Please do not input Special characters\n";
    }
    if (!hasManyCharacters) {
      validatePass = "$validatePass    6 - 32 characters long\n";
    }

    if (!containsNumber) {
      validatePass = "$validatePass    At least 1 number\n";
    }

    return containsUpperCase &&
        containsLowerCase &&
        containsNumber &&
        containsSymbols &&
        hasManyCharacters;
  }
}
