class PokemonBaseInfo {
    // this model is only a mock
  String name;
  int pokemonIndex;
  List<dynamic> types;
  List <dynamic> stats;
  int height;
  int weight;
  List<dynamic> abilities;


  PokemonBaseInfo({ this.name, this.pokemonIndex, this.types, this.stats, 
    this.height, this.weight, this.abilities });

  PokemonBaseInfo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    pokemonIndex = json['pokemonIndex'];
    types = json['types'].cast<dynamic>();
    stats = json['stats'].cast<dynamic>();
    height = json['height'];
    weight = json['weight'];
    abilities = json['abilities'].cast<dynamic>();
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