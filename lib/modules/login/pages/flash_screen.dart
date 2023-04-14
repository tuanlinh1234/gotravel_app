import 'package:doantn/modules/login/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../components/animation/animation.dart';

import '../../../core/constants.dart';
import '../../../preferences/user/user_preferences.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // ignore: avoid_print
    print(UserPrefer.getEmail());
    Future.delayed(const Duration(seconds: 1))
        .then((value) => {FlutterNativeSplash.remove()});
    Future.delayed(const Duration(milliseconds: 3700)).then(
      (value) => {
        UserPrefer.getEmail() == null
            ? Modular.to.navigate(LoginRoutes.homeLogin)
            : Modular.to.navigate(Routes.welcome),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/dis.jpg"),
                  fit: BoxFit.cover)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Spacer(),
            AnimationOpacity(
              context: context,
              duration: const Duration(milliseconds: 3100 + 500),
              chil: AnimationMove(
                duration: const Duration(milliseconds: 3100 + 500),
                curve: Curves.easeInOutQuint,
                y: 180,
                context: context,
                chil: const Text(
                  'GO TRAVEL',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent),
                ),
              ),
            ),

            const Spacer(),

            Container(
              height: 50,
            ),

            // AnimationOpacity(
            //     duration: const Duration(milliseconds: 3300 + 500),
            //     context: context,
            //     chil: AnimationMove(
            //       duration: const Duration(milliseconds: 3300 + 500),
            //       curve: Curves.easeInOutQuint,
            //       y: 130,
            //       context: context,
            //       chil: const Text(
            //         'Discover and Experience',
            //         style: TextStyle(
            //           color: Colors.pinkAccent,
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     )),

            // const SizedBox(
            //   height: 8,
            // ),
            // AnimationOpacity(
            //   context: context,
            //   duration: const Duration(milliseconds: 3500 + 500),
            //   chil: AnimationMove(
            //     duration: const Duration(milliseconds: 3500 + 500),
            //     curve: Curves.easeInOutQuint,
            //     y: 130,
            //     context: context,
            //     chil: Image.asset(
            //       "assets/images/pngtree-travel-icon-image_1144923.jpg",
            //       height: 38,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 60,
            )
          ]),
        ),
      ),
    );
  }
}
