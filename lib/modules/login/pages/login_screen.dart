import 'package:doantn/modules/homes/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../components/animation/animation.dart';
import '../../../components/form/login/frm_login.dart';
import '../../../constants/my_colors.dart';
import '../../../constants/text_style.dart';

class LoginScreen extends StatefulWidget {
  final bool? isLoadScreen;
  const LoginScreen({this.isLoadScreen = false, super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey = GlobalKey<FormState>();
  // ignore: prefer_final_fields
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  void _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
      _goToHomeScreen();
      // ignore: empty_catches
    } catch (error) {}
  }

  void _goToHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: AnimationOpacity(
              duration: Duration(milliseconds: widget.isLoadScreen! ? 1500 : 1),
              context: context,
              chil: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    //!: Background
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 59, 119, 168),
                            Color.fromARGB(255, 108, 54, 117)
                          ],
                        ),
                      ),
                    ),
                    //!: Layouts
                    SizedBox(
                      height: size.height,
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 164,
                          ),
                          //!: lOGO
                          Text(
                            'Đăng nhập',
                            style: bodyTextPrimary.copyWith(
                                color: MyColors.blue1,
                                fontStyle: FontStyle.normal,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          //!: Form
                          FormLogin(formkey: formkey),
                          const SizedBox(
                            height: 16,
                          ),
                          _forGotPassword(),
                          // !: Forgot password
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            '_______Hoặc_______',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 50,
                                child: IconButton(
                                    onPressed: () {
                                      //handleGoogleSignIn();
                                      // _handleSignIn();
                                       _goToHomeScreen();
                                    },
                                    icon: Image.asset(
                                        'assets/images/logo_gg.png')),
                              ),
                              SizedBox(
                                width: 50,
                                child: IconButton(
                                    onPressed: () {
                                      //handleFacebookAuth();
                                      //_login();
                                      //_loginWithFacebook();
                                      //loginWithFB();
                                      _goToHomeScreen();
                                    },
                                    icon: Image.asset(
                                        'assets/images/Facebook_Logo_(2019).png')),
                              )
                            ],
                          ),

                          const Spacer(),
                          //!: Sign Up
                          _footer(size),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }



  // void loginWithFB() async {
  //   FacebookAuth.instance.login().then((result) {
  //     FacebookAuth.instance.getUserData().then((userData) {
  //       setState(() {
  //         _isLoggedIn = true;
  //         _userObj = userData;
  //       });
  //     });
  //   });
  // }

  // void logouts() {
  //   FacebookAuth.instance.logOut().then((value) {
  //     setState(() {
  //       _isLoggedIn = false;
  //       _userObj = {};
  //     });
  //   });
  // }

  // Future<void> _login() async {
  //   try {
  //     final LoginResult result = await FacebookAuth.instance.login();
  //     if (result.status == LoginStatus.success) {
  //       final AccessToken accessToken = result.accessToken!;
  //       final userData = await FacebookAuth.instance.getUserData(
  //         fields: 'name,email,picture.width(800)',
  //       );
  //       setState(() {});
  //     } else {
  //       setState(() {});
  //     }
  //   } catch (error) {}
  // }

  // Future<void> _logout() async {
  //   await FacebookAuth.instance.logOut();
  //   setState(() {});
  // }
  // Future handleGoogleSignIn() async {
  //   final sp = Provider.of<SignInProvider>(context,listen: false);
  //   final ip = Provider.of<InternetProvider>(context,listen: false);
  //   await ip.checkInternetConnection();

  //   if (ip.hasInternet == false) {
  //     googleController.reset();
  //   } else {
  //     await sp.signInWithGoogle().then((value) {
  //       if (sp.haserror == true) {
  //         googleController.reset();
  //       } else {
  //         sp.checkUserExists().then((value) async {
  //           if (value == true) {
  //             await sp.getUserDataFromFireStore(sp.uid).then((value) => sp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => sp.setSignIn().then((value) {
  //                       googleController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           } else {
  //             sp.saveDataToFirestore().then((value) => sp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => sp.setSignIn().then((value) {
  //                       googleController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           }
  //         });
  //       }
  //     });
  //   }
  // }

  // Future handleFacebookAuth() async {
  //    final spp = Provider.of<SignInProvider>(context,listen: false);
  //   final ipp = Provider.of<InternetProvider>(context,listen: false);
  //   await ipp.checkInternetConnection();

  //   if (ipp.hasInternet == false) {
  //     facebookController.reset();
  //   } else {
  //     await spp.signInWithFacebook().then((value) {
  //       if (spp.haserror == true) {
  //         facebookController.reset();
  //       } else {
  //         // checking whether user exists or not
  //         spp.checkUserExists().then((value) async {
  //           if (value == true) {
  //             // user exists
  //             await spp.getUserDataFromFireStore(spp.uid).then((value) => spp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => spp.setSignIn().then((value) {
  //                       facebookController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           } else {
  //             // user does not exist
  //             spp.saveDataToFirestore().then((value) => spp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => spp.setSignIn().then((value) {
  //                       facebookController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           }
  //         });
  //       }
  //     });
  //   }
  // }

  // handleAfterSignIn() {
  //   Future.delayed(const Duration(milliseconds: 1000)).then((value) {});
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: ((context) => HomeScreen())));
  // }

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

  Widget _footer(Size size) {
    return SizedBox(
        height: 22,
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Chưa có tài khoản? ",
                style: bodyTextSecondary.copyWith(
                  color: Colors.black,
                )),
            GestureDetector(
              onTap: () => Modular.to.navigate('/register'),
              child: Text("Đăng kí",
                  style: bodyTextSecondary.copyWith(
                      color: const Color.fromARGB(255, 48, 9, 241),
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ));
  }
}
