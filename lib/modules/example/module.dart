import 'package:flutter_modular/flutter_modular.dart';

class ExampleModule extends Module {
  @override
  List<Bind> get binds => [
    // Bind.singleton((i) => HandOverRepository()),
  ];

  @override
  List<ModularRoute> get routes => [
    // ChildRoute(SubRoutes.customDesign, child: (_, args) => HomePage()),
    // ChildRoute(SubRoutes.menu, child: (_, args) => ExampleMenuPage()),
    // ChildRoute(SubRoutes.handover, child: (_, args) => HandOverPage()),
    // ChildRoute(SubRoutes.signature, child: (_, args) => SignaturePage()),
  ];
}