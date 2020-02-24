import 'package:mobx/mobx.dart';
import 'package:pokedex/app/shared/Model/PokemonModelComponents/pokemon_base_info_model.dart';
import 'package:pokedex/app/shared/gateway/pokeapi_gateway.dart';

part 'pokemon_detail_controller.g.dart';

class PokemonDetailController = _PokemonDetailBase
    with _$PokemonDetailController;

abstract class _PokemonDetailBase with Store {
  final PokeapiGateway pokeapiGateway;

  _PokemonDetailBase(this.pokeapiGateway) {
    autorun((_) {
      _init();
    });
  }

  _init() async {
    PokemonBaseInfo pokemonBaseInfo = await pokeapiGateway.getPokemonBasicInformation((1));
    print('Informção recebida $pokemonBaseInfo');
  }
}
