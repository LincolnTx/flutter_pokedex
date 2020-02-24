import 'package:pokedex/app/shared/Model/PokemonModelComponents/pokemon_special_info_model.dart';

import 'PokemonModelComponents/pokemon_base_info_model.dart';

class PokemonDetailModel {
  PokemonBaseInfo pokemonBaseInfo;
  PokemonSpecialInfo pokemonSpecialInfo;
  
  PokemonDetailModel({ this.pokemonBaseInfo, this.pokemonSpecialInfo });

  PokemonDetailModel.fromJson(Map<String, dynamic> json) {
    pokemonBaseInfo = json['pokemonBaseInfo'] != null
        ? new PokemonBaseInfo.fromJson(json['pokemonBaseInfo'])
        : null;
    pokemonSpecialInfo = json['pokemonSpecialInfo'] != null
        ? new PokemonSpecialInfo.fromJson(json['pokemonSpecialInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pokemonBaseInfo != null) {
      data['pokemonBaseInfo'] = this.pokemonBaseInfo.toJson();
    }
    if (this.pokemonSpecialInfo != null) {
      data['pokemonSpecialInfo'] = this.pokemonSpecialInfo.toJson();
    }
    return data;
  }
}