import 'package:pokedex/app/modules/home/home_module.dart';
import 'package:pokedex/app/modules/pokemon_detail/pokemon_detail_controller.dart';
import 'package:pokedex/app/shared/Model/custom_dio/custom_dio.dart';
import 'package:pokedex/app/app_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/app/app_widget.dart';
import 'package:dio/dio.dart';

import 'shared/gateway/pokeapi_gateway.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => PokemonDetailController(HomeModule.to.getDependency<PokeapiGateway>())),
        Bloc((i) => AppController()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => Dio()),
        Dependency((i) => CustomDio(i.getDependency<Dio>())),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
