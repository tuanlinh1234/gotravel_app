import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/validators.dart';
import '../../../constants/text.dart';
import '../../../constants/text_style.dart';
import '../../../core/constants.dart';
import '../../../preferences/user/user_preferences.dart';
import '../../button/mybutton.dart';
import '../../message/message.dart';
import '../../textfield/login/text_field_email.dart';
import '../../textfield/login/text_field_password.dart';
import '../../../network/connect_api.dart';

// ignore: must_be_immutable
class FormLogin extends StatefulWidget {
  GlobalKey<FormState> formkey;
  FormLogin({super.key, required this.formkey});

  @override
  // ignore: no_logic_in_create_state
  State<FormLogin> createState() => _FormLoginState(formkey: formkey);
}

class _FormLoginState extends State<FormLogin> {
  GlobalKey<FormState> formkey;
  _FormLoginState({required this.formkey});
  final bool isDis = false;

  var isHiden = true;
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool isClick = true;

  String? _checkEmail(value) {
    if (value == null || value.isEmpty) {
      return txtIsEmpty;
    }

    if (!isEmail(value!)) {
      return txtEmailFormat;
    }

    return null;
  }

  String? _checkPassword(value) {
    if (value == null || value.isEmpty) {
      isClick = true;

      return txtIsEmpty;
    }
    return null;
  }

  void _onChange(value) {
    setState(() {
      if (_email.text.isNotEmpty &&
          _password.text.isNotEmpty &&
          isEmail(_email.text)) {
        isClick = false;
      } else {
        isClick = true;
      }
    });
  }

  _disAndEn() {
    Future.delayed(const Duration(seconds: timeMessage)).then((value) {
      // isClick = !isClick;
      isClick = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // ignore: todo
            //TODO: Email

            TextFieldEmail(
              onChanged: _onChange,
              controller: _email,
              validator: _checkEmail,
            ),
            const SizedBox(height: 16),

            // ignore: todo
            //TODO: Password

            TextFieldPassword(
              onChanged: _onChange,
              controller: _password,
              validator: _checkPassword,
            ),
            //  _frmPassword(),
            const SizedBox(
              height: 4,
            ),
            // ignore: todo
            //TODO:

            const SizedBox(
              height: 24,
            ),
            // ignore: todo
            //TODO: Button login
            _btnLogin(),
          ],
        ),
      ),
    );
  }

  Widget _btnLogin() {
    return MyButton(
      onPressed: _checkInputData,
      child: Text("ĐĂNG NHẬP",
          style: bodyTextPrimary.copyWith(fontWeight: FontWeight.w600)),
    );
  }

//!: Function

// ignore: todo
//TODO: Check validate
  void _checkInputData() async {

    if (formkey.currentState!.validate()) {
      isClick = true;
      setState(() {});

      try {
        int value = await UseApiServer.Login(
            username: _email.text, password: _password.text, route: routeLogin);
        // _password.clear();
        switch (value) {
          case 200:
            {
              UserPrefer.setEmail(value: _email.text);
              // Modular.to.navigate(Routes.home);
              if (value == 200) {
                return Modular.to.navigate(Routes.home);
              }
            }
            break;
          case 401:
            {
              // ignore: todo
              //TODO: Sai thong tin tai khoan // Khong tim thay
              // ignore: use_build_context_synchronously
              Message.error(
                message: txtLoginFailed,
                context: context,
              );
              _disAndEn();
            }
            break;

          case 403:
            {
              // ignore: todo
              //TODO: The account has been disabled
              // ignore: use_build_context_synchronously
              Message.error(
                message: theAccountIsNoLongerActive,
                context: context,
              );
              _disAndEn();
            }
            break;
          case 500:
            {}
            break;
          default:
            {
              // ignore: todo
              //TODO: CHUA ACTIVE
              var otp = [_email.text, 2];
              Modular.to.navigate("/otp", arguments: otp);
            }
            break;
        }

        formkey.currentState!.save();
      } catch (e) {
        //"Server not responding"
        Message.error(message: e.toString(), context: context);
        _disAndEn();
      }

      // use the email provided here
    }
  }
}
