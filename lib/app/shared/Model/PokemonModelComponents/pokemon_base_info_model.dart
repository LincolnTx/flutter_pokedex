import 'dart:ffi';

import 'package:pokedex/app/shared/Model/PokemonModelComponents/abilities_model.dart';
import 'package:pokedex/app/shared/Model/PokemonModelComponents/stats_model.dart';
import 'package:pokedex/app/shared/Model/PokemonModelComponents/types_model.dart';

class PokemonBaseInfo {
    // this model is only a mock
  String name;
  int pokemonIndex;
  Types types;
  Stats stats;
  Double height;
  Double weight;
  Abilities abilities;


  PokemonBaseInfo({ this.name, this.pokemonIndex, this.types, this.stats, 
    this.height, this.weight, this.abilities });

  PokemonBaseInfo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    pokemonIndex = json['pokemonIndex'];
    types = json['types'];
    stats = json['stats'];
    height = json['height'];
    weight = json['weight'];
    abilities = json['abilities'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    
    data['name'] = this.name;
    data['pokemonIndex'] = this.pokemonIndex;
    data['types'] = this.pokemonIndex;
    data['stats'] = this.pokemonIndex;
    data['height'] = this.pokemonIndex;
    data['weight'] = this.pokemonIndex;
    data['abilities'] = this.pokemonIndex;

    return data;
  }
}