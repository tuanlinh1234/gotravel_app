import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/validators.dart';
import 'package:flutter/material.dart';
import '../../../constants/text_style.dart';
import '../../button/mybutton.dart';
import '../../textfield/textdield_email.dart';
import '../../textfield/textfield_confimpass.dart';
import '../../textfield/textfield_person.dart';
import '../../textfield/textfieldpass.dart';
import '../../../network/connect_api.dart';

// ignore: must_be_immutable
class FormRegister extends StatefulWidget {
  GlobalKey<FormState> formkey;
  var email = TextEditingController();
  var password = TextEditingController();
  var username = TextEditingController();
  var confirmpassword = TextEditingController();
  FormRegister({
    super.key,
    required this.formkey,
    required this.email,
    required this.username,
    required this.password,
    required this.confirmpassword,
  });

  get emailExists => false;

  @override
  // ignore: no_logic_in_create_state
  State<FormRegister> createState() => _FormRegisterState(
        formkey: formkey,
        emailExists: emailExists,
        email: email,
        username: username,
        password: password,
        confirmpassword: confirmpassword,
      );
}

bool isClick = true;
bool isSend = true;
bool isOk = false;
bool check1 = false;
bool value = false;
var isHiden = true;
var ishowpass = true;
bool isPassCon = false;
bool isHidens = false;
bool isPasss = false;

class _FormRegisterState extends State<FormRegister> {
  GlobalKey<FormState> formkey;
  var email = TextEditingController();
  var password = TextEditingController();
  var username = TextEditingController();
  var confirmpassword = TextEditingController();
  _FormRegisterState({
    required this.formkey,
    required this.email,
    required this.username,
    required this.password,
    required this.confirmpassword,
    required this.emailExists,
  });
  bool btnEnable = true;
  bool? isCheck = false;
  bool isCheckEmail = false;
  bool isPass = false;
  bool isCheckFullname = false;
  bool _isHidenmail = false;
  bool isHiden1 = false;
  bool isPass2 = false;
  bool isHidenPass = false;
  bool isShowPass = true;
  bool isPass1 = false;
  bool isHidenCon = false;
  bool isShowPass1 = true;
  int _emailExists = 0;
  bool emailExists;

  String? _checkName(value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    } else if (value.length > 100) {
      return 'Please do not input exceed 100 characters';
    } else if (isPersonVailid1(value)) {
      return 'Please do not input Special characters';
    } else if (isPersonVailid2(value)) {
      return 'Please do not input Special characters';
    }
    return null;
  }

  String validatePerson = "";
  bool isPersonVailid1(String person) {
    final containsNumber = RegExp(r'\d').hasMatch(person);
    final containsSymbols =
        RegExp(r'[`~!@#$%\^&*\(\)_+\\\-={}\[\]\/.,<>;]').hasMatch(person);
    return containsNumber || containsSymbols;
  }

  bool isPersonVailid2(String person) {
    final containsSymbols =
        RegExp(r'[`~!@#$%\^&*\(\)_+\\\-={}\[\]\/.,<>;]').hasMatch(person);
    return containsSymbols;
  }

  String? _checkEmail(value) {
    if (value == null || value.isEmpty) {
      _emailExists = 0;
      return 'Không được để trống';
    }
    if (!isEmail(value)) {
      _emailExists = 0;
      return 'Không đúng định dạng';
    }

    if (_emailExists == 1) {
      return 'Tài khoản đã tồn tại';
    }
    return null;
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
    if (!isPasswordValid1(value)) {
      return "Phải có 1 số";
    } else if (!isPasswordValid2(value)) {
      return "6 - 32 kí tự";
    } else if (!isPasswordValid3(value)) {
      return "Phải có 1 kí tự đặc biệt";
    } else if (value!.length < 6) {
      return "6 - 32 kí tự";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // final conf = TextEditingController();
    return Column(children: [
      Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              MyTextFieldPerson(
                controller: username,
                validator: _checkName,
                onChanged: (value) {
                  setState(() {
                    if (!isPersonVailid1(value) && value.isNotEmpty) {
                      isCheckFullname = true;
                    } else {
                      isCheckFullname = false;
                    }
                  });
                },
              ),
              const SizedBox(height: 16),
              MyTextFieldEmail(
                  controller: email,
                  validator: _checkEmail,
                  //focusNode: _focusNode,
                  onChanged: (value) {
                    setState(() {
                      if (value.isNotEmpty) {
                        isHiden1 = true;
                      } else {
                        isHiden1 = false;
                      }
                      _isHidenmail = isEmail(value);
                      if (_isHidenmail) {
                        isCheckEmail = true;
                      } else {
                        isCheckEmail = false;
                      }
                    });
                  }),
              const SizedBox(height: 16),
              Column(
                children: [
                  TextFieldPass(
                      isPass: isPass,
                      controller: password,
                      validator: _checkPass,
                      onChanged: (value) {
                        setState(() {
                          if (isPasswordValid1(value) &&
                              isPasswordValid2(value) &&
                              isPasswordValid3(value) &&
                              value.length < 6) {
                            isHidenPass = true;
                            isPasss = true;
                            isPass = true;
                          } else {
                            isPasss = false;
                            isHidenPass = true;
                            isPass = false;
                          }
                          if (password.text == confirmpassword.text) {
                            isPassCon = true;
                          }
                        });
                      }),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              const SizedBox(),
              const SizedBox(
                height: 16,
              ),
              TextFieldConFirm(
                controller: confirmpassword,
                isSuffIcon: true,
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
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _btnContinue(),
      )
    ]);
  }

  Widget _btnContinue() {
    isOk = check1;
    return MyButton(
      onPressed: _checkInputData,
      child: Text('ĐĂNG KÍ',
          style: bodyTextPrimary.copyWith(fontWeight: FontWeight.w600)),
    );
  }

//!: Function

  bool check = false;

  void _checkInputData() async {
    setState(() {
      // print("n1" + n1.toString());
    });
    isSend = false;
    setState(() {});
    int value = await UseApiServer.register(
        username: username.text,
        email: email.text,
        password: password.text,
        route: "users/register");
    if (value == 404) {
      // Message.error(
      //   message: txtRegisterFailed,
      //   context: context,
      // );
      // _emailExists = 1;
      // print(value);
    }
    if (value == 404) {
      // Message.error(
      //   message: txtRegisterFailed,
      //   context: context,
      // );
      _emailExists = 1;
      isCheckEmail = false;
      setState(() {});
    } else if (value == 200) {
      // Message.sucess(message: "OTP send success", context: context);
      var otp = [email.text, 1];
      Modular.to.navigate('/otp', arguments: otp);
    }
  }
}
