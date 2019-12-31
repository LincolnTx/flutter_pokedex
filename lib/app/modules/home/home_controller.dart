import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';
import 'package:pokedex/app/shared/gateway/pokeapi_gateway.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final PokeapiGateway pokeapiGateway;

  _HomeBase(this.pokeapiGateway) {
    _init();
  }

  @observable
  ObservableList<PokemonModel> pokemonList = ObservableList<PokemonModel>();

  @action
  getNew() {
    //do something
  }

  _init() async {
    final  receivedPokemons = await pokeapiGateway.getAllPokemons();  
    pokemonList.addAll(receivedPokemons);
  }

}
