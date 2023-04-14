import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/form/formChangePass/frm_changepass.dart';
import '../../../constants/my_colors.dart';
import '../../../constants/text.dart';
import '../../../constants/text_style.dart';

// ignore: must_be_immutable
class ChangePassScreen extends StatefulWidget {
  String email;
  ChangePassScreen({super.key, required this.email});

  @override
  // ignore: no_logic_in_create_state
  State<ChangePassScreen> createState() => _ChangePassScreenState(email: email);
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  String email;
  _ChangePassScreenState({required this.email});
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                    txtChangePassword,
                    style: bodyTextPrimary.copyWith(
                        color: MyColors.blue1,
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  FormChangePass(
                    formkey: formkey,
                    email: email,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
