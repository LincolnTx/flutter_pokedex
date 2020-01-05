class PokemonModel {
  String name;
  String imageUrl;
  String pokemonIndex;
  bool imageLoading;

  PokemonModel(
      {this.name, this.imageUrl, this.pokemonIndex, this.imageLoading});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imageUrl = json['imageUrl'];
    pokemonIndex = json['pokemonIndex'];
    imageLoading = json['imageLoading'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    data['pokemonIndex'] = this.pokemonIndex;
    data['imageLoading'] = this.imageLoading;
    return data;
  }
}