import 'package:doantn/modules/OTP/constants.dart';
import 'package:doantn/modules/OTP/pages/OTP_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OTPModule extends Module {
  /// BIND: Represents an object that will be available for injection to other dependencies.
  @override
  List<Bind> get binds => [];

  /// ROUTE: Page setup eligible for navigation.
  @override
  List<ModularRoute> get routes => [
        ChildRoute(OtpRoutes.home,
            child: (_, args) => OtpScreen(
                  otp: args.data,
                ))
      ];
}
