import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/app/shared/Model/PokemonModelComponents/pokeapi_response.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';
import 'package:pokedex/app/shared/gateway/pokeapi_gateway.dart';
import 'package:pokedex/app/shared/services/pokemon_service.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final PokeapiGateway pokeapiGateway;
  final PokemonService pokemonService;

  _HomeBase(
    this.pokeapiGateway,
    this.pokemonService
  ) {
    autorun((_) {
      _init();
    });
  }

  @observable
  ObservableList<PokemonCardModel> pokemonsInfoList = ObservableList<PokemonCardModel>();

  @action
  getNew() {
    //do something
  }

  fillPokemonList(List<PokeApiResponse> receivedPokemons) async {
    
  }
  _init() async {

    List<PokeApiResponse>  receivedPokemons = await pokeapiGateway.getAllPokemonsRef();
    receivedPokemons.forEach((pokemon) {
      PokemonCardModel auxPokemon = new PokemonCardModel();
      auxPokemon.pokemonIndex = pokemonService.getPokemonIndex(pokemon);
      auxPokemon.imageUrl = pokemonService.addImageOnPokemon(auxPokemon.pokemonIndex);
      auxPokemon.imageLoading = true;
      auxPokemon.name = pokemonService.formatPokemonName(pokemon.name);
      pokemonsInfoList.add(auxPokemon);
    });
  }
}