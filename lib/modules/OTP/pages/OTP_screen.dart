
// ignore: file_names
import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../components/form/formOTP/frm_OTP.dart';
import '../../../constants/my_colors.dart';
import '../../../constants/text_style.dart';
import '../../login/constanst.dart';

// ignore: must_be_immutable
class OtpScreen extends StatefulWidget {
  var otp = [];
  OtpScreen({super.key, required this.otp});

  @override
  // ignore: no_logic_in_create_state
  State<OtpScreen> createState() => _OtpScreenState(otp: otp);
}

class _OtpScreenState extends State<OtpScreen> {
  var otp = [];
  _OtpScreenState({required this.otp});

  final CountdownController _controller =
      CountdownController(autoStart: true);

  bool resend = true;
  Timer? timer;
  bool _enabled = true;
  @override
  void initState() {
    super.initState();
  }

  Future<void> _ontap() async {
    _enabled = false;
    resend = true;
    _controller.restart();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 157, 203, 240),
                  Color.fromARGB(255, 232, 178, 240)
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 82,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        otp[1] == 1
                            ? Modular.to.navigate('/register')
                            : otp[1] == 0
                                ? Modular.to.navigate('/forgotpass')
                                : Modular.to.navigate(LoginRoutes.home);
                      },
                      child: SvgPicture.asset('assets/images/rowleft.svg'),
                    ),
                  ),
                ),
                const SizedBox(height: 92),
                Text(
                  'Nhập mã OTP',
                  style: bodyTextPrimary.copyWith(
                      color: MyColors.blue1,
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                Text(
                  'Một OTP đã được gửi đến email của bạn\nađịa chỉ. Vui lòng kiểm tra hộp thư của bạn',
                  style: bodyTextSecondary.copyWith(
                      color: MyColors.black, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mã của bạn sẽ hết hạn sau ',
                      style: bodyTextSecondary.copyWith(
                          color: MyColors.black, fontWeight: FontWeight.w400),
                    ),
                    Countdown(
                      controller: _controller,
                      seconds: 60,
                      build: (_, double time) {
                        int index = time.toString().indexOf('.');
                        String val = time.toString().substring(0, index);
                        return Text(
                          "${val}s",
                          style: bodyTextSecondary.copyWith(
                              color: MyColors.error,
                              fontWeight: FontWeight.w700),
                        );
                      },
                      onFinished: () {
                        _enabled = true;
                        resend = false;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                OTPForm(
                  formkey: formkey,
                  email: otp[0],
                  value: otp[1],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  resend ? 'Không nhận được OTP?' : 'OTP đã hết hạn',
                  style: bodyTextSecondary.copyWith(
                      color: MyColors.black, fontWeight: FontWeight.w600),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Gửi lại',
                        style: _enabled ? resendEnable() : resendDisable(),
                        recognizer: TapGestureRecognizer()
                          ..onTap = _enabled ? _ontap : null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  TextStyle resendEnable() {
    return bodyTextSecondary.copyWith(
      color: MyColors.blue1,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle resendDisable() {
    return bodyTextSecondary.copyWith(
        color: MyColors.grey2,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold);
  }
}
