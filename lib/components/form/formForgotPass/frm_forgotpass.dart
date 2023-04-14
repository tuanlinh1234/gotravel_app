import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/validators.dart';
import '../../../constants/text_style.dart';
import '../../button/mybutton.dart';
import '../../textfield/textdield_email.dart';
import '../../../network/connect_api.dart';

// ignore: must_be_immutable
class ForgotPassForm extends StatefulWidget {
  GlobalKey<FormState> formkey;
  ForgotPassForm({super.key, required this.formkey});

  @override
  // ignore: no_logic_in_create_state
  State<ForgotPassForm> createState() => _ForgotPassFormState(formkey: formkey);
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  GlobalKey<FormState> formkey;
  _ForgotPassFormState({required this.formkey});
  int isSend = 0;
  bool _isEmail = false;
  // ignore: unused_field
  bool _isHiden = false;
  final _email = TextEditingController();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    isSend = 0;
    super.initState();
  }

  void _onChange(value) {
    setState(() {
      if (value.length > 0) {
        _isHiden = true;
      } else {
        _isHiden = false;
      }
      _isEmail = isEmail(value);
      if (_isEmail) {
      }
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
            MyTextFieldEmail(
              controller: _email,
              onChanged: _onChange,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Không được để trống';
                }
                if (!isEmail(value)) {
                  return 'Không đúng định dạng';
                }
                if (isSend == 2) {
                  isSend = 0;
                  return "Tài khoản đã tồn tại";
                }
                if (isSend == 0) {
                  return null;
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            MyButton(
              onPressed: _checkInputData,
              child: Text('Tiếp tục',
                  style: bodyTextPrimary.copyWith(fontWeight: FontWeight.w600)),
            )
          ],
        ),
      ),
    );
  }

  _checkInputData() async {
    int value = await UseApiServer.forgotpass(
        //_email.text
        email: _email.text,
        route: "users/forgot-password");
    if (value == 404) {
      isSend = 2;
      setState(() {});
      // Message.error(
      //   message: "Not Found Email",
      //   context: context,
      // );
    } else if (value == 200) {
      var otp = [_email.text, 0];
      Modular.to.navigate('/otp', arguments: otp);

      //Message.sucess(message: "Find email", context: context);
    }
    // ignore: avoid_print
    print(value);
  }
}
