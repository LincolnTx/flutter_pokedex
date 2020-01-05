import 'package:pokedex/app/shared/Model/PokemonModelComponents/pokeapi_response.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';
import 'package:pokedex/app/shared/gateway/pokeapi_gateway.dart';

class PokemonService {
  String addImageOnPokemon(String pokemonIndex) {
    return "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/$pokemonIndex.png?raw=true";
  }

  String getPokemonIndex(PokeApiResponse pokemon) {
    return pokemon.url.split("/")[pokemon.url.split("/").length - 2];
  }
}