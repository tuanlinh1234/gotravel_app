import 'package:doantn/modules/OTP/module.dart';
import 'package:doantn/modules/changepass/module.dart';
import 'package:doantn/modules/example/module.dart';
import 'package:doantn/modules/forgotpass/module.dart';
import 'package:doantn/modules/login/module.dart';
import 'package:doantn/modules/register/module.dart';
import 'package:doantn/modules/user/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../constants/text.dart';
import '../core/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class AppModule extends Module {
  /// BIND: Represents an object that will be available for injection to other dependencies.
  @override
  List<Bind> get binds => [];

  /// ROUTE: Page setup eligible for navigation.
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Routes.index, module: LoginModule()),
        //ModuleRoute(Routes.home, module: HomeModule()), //Screen home

        ModuleRoute(Routes.user, module: UserModule()),
        ModuleRoute(Routes.example, module: ExampleModule()),
        ModuleRoute(Routes.forgotpass, module: ForgotPassModule()),
        ModuleRoute(Routes.otp, module: OTPModule()),
        ModuleRoute(Routes.register, module: RegisterModule()),
        ModuleRoute(Routes.changepass, module: ChangePassModule()),
      ];
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('en', ''),
        Locale('zh', ''),
        Locale('he', ''),
        Locale('es', ''),
        Locale('ru', ''),
      ],
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: fontFamily),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
