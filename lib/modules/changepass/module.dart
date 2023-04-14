import 'package:doantn/modules/changepass/constants.dart';
import 'package:doantn/modules/changepass/pages/changepass_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChangePassModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(ChangePassRoutes.home,
            child: (_, args) => ChangePassScreen(
                  email: args.data,
                ))
      ];
}
