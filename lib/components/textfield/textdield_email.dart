import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

import '../../constants/values.dart';

class MyTextFieldEmail extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  // ignore: prefer_typing_uninitialized_variables
  final focusNode;
  final String? Function(String?)? validator;
  final bool? isSuffIcon;
  const MyTextFieldEmail(
      {this.controller,
      this.validator,
      this.focusNode,
      this.isSuffIcon,
      this.onChanged,
      super.key});

  @override
  State<MyTextFieldEmail> createState() => _MyTextFieldEmailState();
}

class _MyTextFieldEmailState extends State<MyTextFieldEmail> {
  // late FocusNode _focusNode;
  String? _checkEmail(value) {
    if (value == null || value.isEmpty) {
      isLogin = false;
      return 'This field is required';
    }

    if (!isEmail(value!)) {
      isLogin = false;
      return 'Invalid email format';
    }
    isLogin = true;
    return null;
  }

  void _onChange(value) {
    setState(() {
      if (value.length > 0) {
      } else {
      }
      //

    });
  }

  // final _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    // _focusNode = FocusNode();
    // _focusNode.addListener(() {
    //   if(!_focusNode.hasFocus){
    //       print("focus");
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator ?? _checkEmail,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      // keyboardAppearance: Brightness.dark,
      autocorrect: true,
      // autofocus: true,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged ?? _onChange,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: "Email*",
        hintStyle: const TextStyle(
            fontFamily: 'fontmain',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 1,
            color: Color(0xffC6CCD3)),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        prefixIcon: const Icon(
          Icons.email_outlined,
        ),
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
