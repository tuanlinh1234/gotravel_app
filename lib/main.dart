import 'package:doantn/modules/app_module.dart';
import 'package:doantn/preferences/user/user_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await UserPrefer.init();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   await UserPrefer.init();
//   runApp(ModularApp(module: AppModule(), child: AppWidget()));
// }

// class DoanApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: ((context) => SignInProvider())),
//           ChangeNotifierProvider(create: ((context) => InternetProvider()))
//         ],
//         child: const MaterialApp(
//           home: LoginScreen(),
//           debugShowCheckedModeBanner: false,
//         ));
//   }
// }

// void main() async {
//   // initialize the application
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   await UserPrefer.init();
//   runApp(ModularApp(module: AppModule(), child: AppWidget()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: ((context) => SignInProvider()),
//         ),
//         ChangeNotifierProvider(
//           create: ((context) => InternetProvider()),
//         ),
//       ],
//       child: const MaterialApp(
//         home: FlashScreen(),
//         debugShowCheckedModeBanner: false,
//       ),
//     );
//   }
// }
