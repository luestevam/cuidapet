import 'package:cuidapetmobile/app/modules/auth/auth_module.dart';
import 'package:cuidapetmobile/app/modules/core/auth/core_module.dart';
import 'package:cuidapetmobile/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<Module> get imports => [CoreModule()];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/auth/', module: AuthModule()),
    ModuleRoute('/home/', module: HomeModule()),
  ];
}
