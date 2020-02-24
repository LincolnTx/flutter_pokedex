class PokemonSpecialInfo {
  // this model is only a mock
  String secoond;
  int any;

  PokemonSpecialInfo({this.secoond, this.any});

  PokemonSpecialInfo.fromJson(Map<String, dynamic> json) {
    secoond = json['secoond'];
    any = json['any'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['secoond'] = this.secoond;
    data['any'] = this.any;
    return data;
  }
}