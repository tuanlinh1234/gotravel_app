import 'package:doantn/components/textfield/textdield_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../components/button/mybutton.dart';
import '../../components/textfield/textfield_confimpass.dart';
import '../../components/textfield/textfieldpass.dart';
import '../../constants/text_style.dart';

class ChangPassWord extends StatefulWidget {
  const ChangPassWord({super.key});

  @override
  State<ChangPassWord> createState() => _ChangPassWordState();
}

bool isPassCon = false;
bool isPasss = false;
bool isOk = false;
bool check1 = false;

class _ChangPassWordState extends State<ChangPassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Đổi mật khẩu"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const MyTextFieldEmail(),
              const SizedBox(
                height: 20,
              ),
              TextFieldPass(
                isPass: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFieldConFirm(),
              const SizedBox(
                height: 20,
              ),
              _btnContinue(),
              const SizedBox(
                height: 10,
              ),
              _forGotPassword(),
            ],
          ),
        ));
  }

  _forGotPassword() {
    return GestureDetector(
      onTap: () => Modular.to.navigate('/forgotpass'),
      child: Text("Quên mật khẩu",
          style: bodyTextSecondary.copyWith(
            color: const Color.fromARGB(255, 48, 9, 241),
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          )),
    );
  }

  Widget _btnContinue() {
    isOk = check1;
    return MyButton(
      onPressed: () {},
      child: Text('Đổi mật khẩu',
          style: bodyTextPrimary.copyWith(fontWeight: FontWeight.w600)),
    );
  }
}
