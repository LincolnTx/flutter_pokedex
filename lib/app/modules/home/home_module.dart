import 'package:pokedex/app/app_module.dart';
import 'package:pokedex/app/modules/home/home_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/home/home_page.dart';
import 'package:pokedex/app/shared/Model/custom_dio/custom_dio.dart';
import 'package:pokedex/app/shared/gateway/pokeapi_gateway.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeController(HomeModule.to.getDependency<PokeapiGateway>()))
      ];

  @override
  List<Dependency> get dependencies => [
    Dependency(
      (injectDependency) => PokeapiGateway(AppModule.to.getDependency<CustomDio>())
    )
  ];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
