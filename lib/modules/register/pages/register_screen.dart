import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/form/formRegister/frm_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formkey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _username = TextEditingController();
  final _confirmpassword = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _email.text = "";
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      // physics: const NeverScrollableScrollPhysics(),
      child: Stack(
        alignment: Alignment.center,
        children: [
          //!: Background
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
          //!: Layouts
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        setState(() {
                          _username.clear();
                          _email.clear();
                          _password.clear();
                          _confirmpassword.clear();
                        });

                        Modular.to.navigate('/home');
                      },
                      child: SvgPicture.asset('assets/images/rowleft.svg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(bottom: 40, left: 16, right: 16),
                  child: const Text(
                    'Đăng kí tài khoản',
                    style: TextStyle(
                      fontFamily: 'fontmain',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      letterSpacing: 0.5,
                      color: Color(0xff3169B3),
                    ),
                  ),
                ),
                //const Spacer(),
                //!: Form
                FormRegister(
                  formkey: formkey,
                  email: _email,
                  password: _password,
                  username: _username,
                  confirmpassword: _confirmpassword,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
