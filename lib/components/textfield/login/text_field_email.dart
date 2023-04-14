import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

import '../../../constants/text.dart';
import '../../../constants/values.dart';

class TextFieldEmail extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isSuffIcon;
  final Widget? prefixIcon;
  final bool? isPrefix;
  final TextInputAction? textInputAction;
  final String? text;
  const TextFieldEmail(
      {this.controller,
      this.textInputAction,
      this.text,
      this.isPrefix = false,
      this.prefixIcon,
      this.validator,
      this.isSuffIcon,
      this.onChanged,
      super.key});

  @override
  State<TextFieldEmail> createState() => _TextFieldEmailState();
}

class _TextFieldEmailState extends State<TextFieldEmail> {
  String? _checkEmail(value) {
    // if (value!.length < 1) {
    //   isLogin = false;
    //   return null;
    // }
    if (value == null || value.isEmpty) {
      isLogin = false;
      return txtIsEmpty;
    }

    if (!isEmail(value!)) {
      isLogin = false;
      return txtEmailFormat;
    }
    isLogin = true;
    return null;
  }

  void _onChange(value) {
    setState(() {
      if (value.length > 0) {
      } else {
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 1),
      validator: widget.validator ?? _checkEmail,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      // keyboardAppearance: Brightness.dark,
      autocorrect: true,
      onChanged: widget.onChanged ?? _onChange,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.text ?? "Email*",
        hintStyle: const TextStyle(
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400,
            color: Color(0xffC6CCD3),
            fontSize: 16,
            letterSpacing: 1),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        prefixIcon: widget.isPrefix!
            ? null
            : widget.prefixIcon ??
                const Icon(Icons.email_outlined,
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
}
