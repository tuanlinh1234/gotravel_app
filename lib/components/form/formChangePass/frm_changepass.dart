import 'package:flutter/material.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../constants/text.dart';
import '../../../constants/text_style.dart';
import '../../../modules/login/constanst.dart';
import '../../button/mybutton.dart';
import '../../message/message.dart';
import '../../textfield/textfield_confimpass.dart';
import '../../textfield/textfieldpass.dart';
import '../../../network/connect_api.dart';

// ignore: must_be_immutable
class FormChangePass extends StatefulWidget {
  GlobalKey<FormState> formkey;
  String email;
  FormChangePass({super.key, required this.formkey, required this.email});

  @override
  State<FormChangePass> createState() =>
      // ignore: no_logic_in_create_state
      _FormChangePassState(formkey: formkey, email: email);
}

bool isPassCon = false;
bool isPasss = false;

class _FormChangePassState extends State<FormChangePass> {
  GlobalKey<FormState> formkey;
  String email;
  _FormChangePassState({required this.formkey, required this.email});
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  bool isHiden = false;
  bool isHidenCon = false;
  bool isPass1 = false;
  bool isHidenPasss = false;

  String hs256() {
    String token;

    final jwt = JWT(
      {
        'email': email,
        'newpass': password.text,
        'confirmpassword': confirmpassword.text
      },
      issuer: 'https://github.com/jonasroussel/dart_jsonwebtoken',
    );

    token = jwt.sign(SecretKey(txtSecretKey));

    // ignore: avoid_print
    print(token);
    return token;
  }

  String? _checkPassCon(value) {
    if (value == password.text) return null;
    return "Mật khẩu không đúng";
  }

  String validatePassWord = "";
  bool isPasswordValid1(String password) {
    final containsNumber = RegExp(r'\d').hasMatch(password);
    return containsNumber;
  }

  bool isPasswordValid2(String password) {
    final hasManyCharacters =
        RegExp(r'^.{6,32}$', dotAll: true).hasMatch(password);
    return hasManyCharacters;
  }

  bool isPasswordValid3(String password) {
    final containsSymbols =
        RegExp(r'[`~!@#$%\^&*\(\)_+\\\-={}\[\]\/.,<>;]').hasMatch(password);

    return containsSymbols;
  }

  String? _checkPass(value) {
    if (isPasswordValid1(value)) {
      return "Phải có 1 số";
    } else if (isPasswordValid2(value)) {
      return "6 - 32 kí tự";
    } else if (isPasswordValid3(value)) {
      return "Phải có 1 kí tự đặc biệt";
    } else if (value!.length < 6) {
      return "6 - 32 kí tự";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextFieldPass(
              controller: password,
              isPass: isPasss,
              validator: _checkPass,
              onChanged: (value) {
                setState(() {
                  if (isPasswordValid1(value) &&
                      isPasswordValid2(value) &&
                      isPasswordValid3(value) &&
                      value.length < 6) {
                    isHidenPasss = true;
                    isPasss = true;
                    isPasss = true;
                  } else {
                    isPasss = false;
                    isHidenPasss = true;
                    isPasss = false;
                  }
                  if (password.text == confirmpassword.text) {
                    isPassCon = true;
                  }
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFieldConFirm(
              controller: confirmpassword,
              validator: _checkPassCon,
              onChanged: (value) {
                setState(() {
                  if (confirmpassword.text == password.text) {
                    isHidenCon = true;
                    isPass1 = true;
                    isPassCon = true;
                  } else {
                    isPass1 = false;
                    isHidenCon = false;
                    isPassCon = false;
                  }
                });
              },
              isSuffIcon: true,
              text: password.text,
            ),
            const SizedBox(
              height: 16,
            ),
            isPasss && isPassCon
                ? MyButton(
                    onPressed: _checkInputData,
                    child: Text(
                      btnChangePassword,
                      style:
                          bodyTextPrimary.copyWith(fontWeight: FontWeight.w600),
                    ),
                  )
                : MyButton(
                    disable: true,
                    onPressed: null,
                    child: Text(
                      btnChangePassword,
                      style:
                          bodyTextPrimary.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  _checkInputData() async {
    if (formkey.currentState!.validate()) {
      var value = await UseApiServer.changepass(
          token: hs256(), route: "users/changepassword");

      hs256();
      if (value == 200 || value == 201) {
        Modular.to.navigate(LoginRoutes.homeLogin);
        // ignore: use_build_context_synchronously
        Message.sucess(
          message: txtChangePasswordSuccess,
          context: context,
        );
      }
    }
  }
}
