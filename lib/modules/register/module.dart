import 'package:doantn/modules/register/constanst.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/register_screen.dart';

class RegisterModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(RegisterRoutes.home,
            child: (_, args) => const RegisterScreen()),
      ];
}
