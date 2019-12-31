// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$pokemonListAtom = Atom(name: '_HomeBase.pokemonList');

  @override
  ObservableList<PokemonModel> get pokemonList {
    _$pokemonListAtom.context.enforceReadPolicy(_$pokemonListAtom);
    _$pokemonListAtom.reportObserved();
    return super.pokemonList;
  }

  @override
  set pokemonList(ObservableList<PokemonModel> value) {
    _$pokemonListAtom.context.conditionallyRunInAction(() {
      super.pokemonList = value;
      _$pokemonListAtom.reportChanged();
    }, _$pokemonListAtom, name: '${_$pokemonListAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic getNew() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.getNew();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
