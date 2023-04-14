import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/form/formForgotPass/frm_forgotpass.dart';
import '../../../constants/my_colors.dart';
import '../../../constants/text_style.dart';
class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //const Spacer(),
                  const SizedBox(
                    height: 82,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Modular.to.navigate('/home'),
                        child: SvgPicture.asset('assets/images/rowleft.svg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 124,
                  ),
                  //!Text
                  Text(
                    'Quên mật khẩu',
                    style: bodyTextPrimary.copyWith(
                        color: MyColors.blue1,
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Nhập địa chỉ email của bạn để nhận được một',
                    style: bodyTextSecondary.copyWith(
                        color: MyColors.black, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'mã OTP',
                    style: bodyTextSecondary.copyWith(
                        color: MyColors.black, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  ForgotPassForm(
                    formkey: formkey,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
