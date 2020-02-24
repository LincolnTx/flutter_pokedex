import 'package:mobx/mobx.dart';

part 'pokemon_detail_controller.g.dart';

class PokemonDetailController = _PokemonDetailBase
    with _$PokemonDetailController;

abstract class _PokemonDetailBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
