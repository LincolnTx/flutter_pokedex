import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:pokedex/app/modules/pokemon_detail_controller.dart';
import 'package:pokedex/app/app_module.dart';

void main() {
  Modular.init(AppModule());
  bindModule(AppModule());
  PokemonDetailController pokemondetail;

  setUp(() {
    pokemondetail = AppModule.to.bloc<PokemonDetailController>();
  });

  group('PokemonDetailController Test', () {
    test("First Test", () {
      expect(pokemondetail, isInstanceOf<PokemonDetailController>());
    });

    test("Set Value", () {
      expect(pokemondetail.value, equals(0));
      pokemondetail.increment();
      expect(pokemondetail.value, equals(1));
    });
  });
}
