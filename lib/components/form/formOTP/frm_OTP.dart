// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../textfield/otp/textfield_otp.dart';


// ignore: must_be_immutable
class OTPForm extends StatefulWidget {
  String email;
  int value;
  GlobalKey<FormState> formkey;
  OTPForm(
      {super.key,
      required this.formkey,
      required this.email,
      required this.value});

  @override
  State<OTPForm> createState() =>
      // ignore: no_logic_in_create_state
      _OTPFormState(formkey: formkey, email: email, value: value);
}

class _OTPFormState extends State<OTPForm> {
  String email;
  int value;
  GlobalKey<FormState> formkey;
  _OTPFormState(
      {required this.formkey, required this.email, required this.value});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 55,
            ),
            child: TextFieldOTP(
              email: email,
              value: value,
            ),
          ),
        ],
      ),
    );
  }
}
