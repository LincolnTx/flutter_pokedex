import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';

class PokeapiGateway extends Disposable {
  //dispose will be called automatically
  @override
  void dispose() {}

  Future<List<PokemonModel>> getAllPokemons() async {
    return new List<PokemonModel>();
  }
}
