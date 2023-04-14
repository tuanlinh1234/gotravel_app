import 'package:doantn/modules/user/constants.dart';
import 'package:doantn/modules/user/pages/user_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserModule extends Module {

  /// BIND: Represents an object that will be available for injection to other dependencies.
  @override
  List<Bind> get binds => [];

  /// ROUTE: Page setup eligible for navigation.
  @override
  List<ModularRoute> get routes => [
    ChildRoute(UserRoutes.home, child: (_, args) => UserPage())
  ];
}