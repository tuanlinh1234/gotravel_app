import 'package:doantn/modules/login/constanst.dart';
import 'package:doantn/modules/login/pages/flash_screen.dart';
import 'package:doantn/modules/login/pages/login_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';



class LoginModule extends Module {
  /// BIND: Represents an object that will be available for injection to other dependencies.
  @override
  List<Bind> get binds => [];

  /// ROUTE: Page setup eligible for navigation.
  @override
  List<ModularRoute> get routes => [
        ChildRoute(LoginRoutes.flash, child: (_, args) => const FlashScreen()),
        ChildRoute(LoginRoutes.homeLogin,
            child: (_, args) => const LoginScreen(
                  isLoadScreen: true,
                )),
        ChildRoute(LoginRoutes.home, child: (_, args) => const LoginScreen()),
      ];
}