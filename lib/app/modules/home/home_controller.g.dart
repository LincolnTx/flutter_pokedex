// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$pokemonsInfoListAtom = Atom(name: '_HomeBase.pokemonsInfoList');

  @override
  ObservableList<PokemonCardModel> get pokemonsInfoList {
    _$pokemonsInfoListAtom.context.enforceReadPolicy(_$pokemonsInfoListAtom);
    _$pokemonsInfoListAtom.reportObserved();
    return super.pokemonsInfoList;
  }

  @override
  set pokemonsInfoList(ObservableList<PokemonCardModel> value) {
    _$pokemonsInfoListAtom.context.conditionallyRunInAction(() {
      super.pokemonsInfoList = value;
      _$pokemonsInfoListAtom.reportChanged();
    }, _$pokemonsInfoListAtom, name: '${_$pokemonsInfoListAtom.name}_set');
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
