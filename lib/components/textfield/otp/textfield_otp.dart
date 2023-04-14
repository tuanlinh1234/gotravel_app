import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/my_colors.dart';
import '../../../constants/text.dart';
import '../../../constants/text_style.dart';

class TextFieldOTP extends StatefulWidget {
  final String email;
  final int value;
  const TextFieldOTP({super.key, required this.email, required this.value});

  @override
  State<TextFieldOTP> createState() =>
      // ignore: no_logic_in_create_state
      _TextFieldOTPState(email: email, value: value);
}

class _TextFieldOTPState extends State<TextFieldOTP> {
  String email;
  int value;
  _TextFieldOTPState({required this.email, required this.value});
  String otp = "";
  final pin1 = TextEditingController();
  final pin2 = TextEditingController();
  final pin3 = TextEditingController();
  final pin4 = TextEditingController();
  final pin5 = TextEditingController();

  FocusNode myFocus1 = FocusNode();
  FocusNode myFocus2 = FocusNode();
  FocusNode myFocus3 = FocusNode();
  FocusNode myFocus4 = FocusNode();
  FocusNode myFocus5 = FocusNode();

  bool validator = false;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    //startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 40,
              child: TextFormField(
                autofocus: true,
                controller: pin1,
                focusNode: myFocus1,
                onChanged: (value) {
                  otp = pin1.text;
                  if (value.length == 1) {
                    FocusScope.of(context).requestFocus(myFocus2);
                  }
                },
                onSaved: (p1) {},
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlign: TextAlign.center,
                style: bodyTextPrimary.copyWith(
                  color: MyColors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                showCursor: false,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(top: 12, bottom: 12, left: 2.6),
                  // contentPadding:
                  //     const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: validator == false
                        ? const BorderSide(color: MyColors.grey2)
                        : const BorderSide(color: MyColors.error),
                  ),
                  filled: true,
                  fillColor: MyColors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: validator == false
                        ? const BorderSide(color: MyColors.grey2)
                        : const BorderSide(color: MyColors.error),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   width: 16,
            // ),
            RawKeyboardListener(
              focusNode: FocusNode(),
              child: SizedBox(
                width: 40,
                child: TextFormField(
                  controller: pin2,
                  focusNode: myFocus2,
                  onTap: () {
                    FocusScope.of(context).requestFocus(myFocus1);
                  },
                  onChanged: (value) {
                    otp = otp + pin2.text;
                    if (value.length == 1) {
                      FocusScope.of(context).requestFocus(myFocus3);
                    }
                  },
                  onSaved: (p2) {},
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  style: bodyTextPrimary.copyWith(
                    color: MyColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  showCursor: false,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 12, bottom: 12, left: 2.6),
                    // contentPadding:
                    //     const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                    ),
                    filled: true,
                    fillColor: MyColors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                    ),
                  ),
                ),
              ),
              onKey: (RawKeyEvent event) {
                if (event.isKeyPressed(LogicalKeyboardKey.backspace)) {
                  FocusScope.of(context).requestFocus(myFocus1);
                  pin1.text = "";
                }
              },
            ),
            // SizedBox(
            //   width: 16,
            // ),

            RawKeyboardListener(
              focusNode: FocusNode(),
              child: SizedBox(
                width: 40,
                child: TextFormField(
                  controller: pin3,
                  focusNode: myFocus3,
                  onTap: () {
                    FocusScope.of(context).requestFocus(myFocus1);
                  },
                  onChanged: (value) {
                    otp = otp + pin3.text;
                    if (value.length == 1) {
                      FocusScope.of(context).requestFocus(myFocus4);
                    }
                  },
                  onSaved: (p3) {},
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  style: bodyTextPrimary.copyWith(
                    color: MyColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  showCursor: false,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 12, bottom: 12, left: 2.6),
                    // contentPadding:
                    //     const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                    ),
                    filled: true,
                    fillColor: MyColors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                    ),
                  ),
                ),
              ),
              onKey: (RawKeyEvent event) {
                if (event.isKeyPressed(LogicalKeyboardKey.backspace)) {
                  FocusScope.of(context).requestFocus(myFocus2);
                  pin2.text = "";
                }
              },
            ),
            // SizedBox(
            //   width: 16,
            // ),
            RawKeyboardListener(
              focusNode: FocusNode(),
              child: SizedBox(
                width: 40,
                child: TextFormField(
                  controller: pin4,
                  focusNode: myFocus4,
                  onTap: () {
                    FocusScope.of(context).requestFocus(myFocus1);
                  },
                  onChanged: (value) {
                    otp = otp + pin4.text;
                    if (value.length == 1) {
                      FocusScope.of(context).requestFocus(myFocus5);
                    }
                  },
                  onSaved: (p4) {},
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  style: bodyTextPrimary.copyWith(
                    color: MyColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  showCursor: false,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 12, bottom: 12, left: 2.6),
                    // contentPadding:
                    //     const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                    ),
                    filled: true,
                    fillColor: MyColors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                    ),
                  ),
                ),
              ),
              onKey: (RawKeyEvent event) {
                if (event.isKeyPressed(LogicalKeyboardKey.backspace)) {
                  FocusScope.of(context).requestFocus(myFocus3);
                  pin3.text = "";
                }
              },
            ),
            // SizedBox(
            //   width: 16,
            // ),
            RawKeyboardListener(
              focusNode: FocusNode(),
              child: SizedBox(
                width: 40,
                child: TextFormField(
                  controller: pin5,
                  focusNode: myFocus5,
                  onTap: () {
                    FocusScope.of(context).requestFocus(myFocus1);
                  },
                  onChanged: (value) async {
                    otp = otp + pin5.text;
                    // if (value.length == 1) {
                    //   FocusScope.of(context).unfocus();
                    //   var val = await UseApiServer.otp(
                    //       //_email.text
                    //       email: email,
                    //       otp: otp,
                    //       route: "users/otp");
                    //   print(otp);
                    //   if (val != 200) {
                    //     validator = true;
                    //     //isSend = true;
                    //     setState(() {
                    //       pin1.text = "";
                    //       pin2.text = "";
                    //       pin3.text = "";
                    //       pin4.text = "";
                    //       pin5.text = "";
                    //     });
                    //   } else if (val == 200) {
                    //     print(val);
                    //     //isSend = !false;

                    //     setState(() {
                    //       pin1.text = "";
                    //       pin2.text = "";
                    //       pin3.text = "";
                    //       pin4.text = "";
                    //       pin5.text = "";
                    //     });
                    //     //Modular.to.navigate('/otp');

                    //     if (this.value == 0) {
                    //       //!: quen mat khau
                    //       Modular.to.navigate('/changepass', arguments: email);
                    //     } else if (this.value == 2) {
                    //       //!: dang nhap chua active
                    //       Modular.to.navigate(Routes.welcome); //(Routes.home);
                    //     } else if (this.value == 1) {
                    //       //!: dang ky
                    //       Modular.to.navigate(Routes.welcome);
                    //     }
                    //   }
                    // }
                    if (value.length != 1) {
                      FocusScope.of(context).requestFocus(myFocus4);
                    }
                  },
                  onSaved: (p5) {},
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  style: bodyTextPrimary.copyWith(
                    color: MyColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  showCursor: false,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 12, bottom: 12, left: 2.6),
                    // contentPadding:
                    //     const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                    ),
                    filled: true,
                    fillColor: MyColors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: validator == false
                          ? const BorderSide(color: MyColors.grey2)
                          : const BorderSide(color: MyColors.error),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              onKey: (RawKeyEvent event) {
                if (event.isKeyPressed(LogicalKeyboardKey.backspace)) {
                  FocusScope.of(context).requestFocus(myFocus4);
                  pin4.text = "";
                }
              },
            ),
          ],
        ),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: validator,
          child: Text(
            txtOptError,
            style: bodyTextSecondary.copyWith(
                color: MyColors.error, fontSize: 12.5),
          ),
        ),
      ],
    );
  }
}
