import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFieldName extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isSuffIcon;
  // ignore: prefer_typing_uninitialized_variables
  final focusNode;
  // void Function()? ontap;
  final String? text;
  const MyTextFieldName(
      {this.text,
      this.controller,
      this.validator,
      this.focusNode,
      this.isSuffIcon = false,
      this.onChanged,
      super.key});

  @override
  State<MyTextFieldName> createState() => _MyTextFieldNameState();
}

class _MyTextFieldNameState extends State<MyTextFieldName> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(
          100,
        ),
      ],
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      autocorrect: true,
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: "Họ và tên*",
        hintStyle: const TextStyle(
            fontFamily: 'Gothic',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 1,
            color: Color(0xffC6CCD3)),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        prefixIcon: const Icon(Icons.person_2_outlined),
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