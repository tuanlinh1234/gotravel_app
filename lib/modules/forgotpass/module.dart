import 'package:doantn/modules/forgotpass/constants.dart';
import 'package:doantn/modules/forgotpass/pages/forgotpass_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ForgotPassModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(ForgotpassRoutes.home,
            child: (_, args) => const ForgotPassScreen())
      ];
}
