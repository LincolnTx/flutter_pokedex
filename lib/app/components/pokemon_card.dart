import 'package:flutter/material.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';

class PokemonCard extends StatefulWidget {
  final PokemonModel pokemon;

  const PokemonCard({Key key, @required this.pokemon}) : super(key: key);

  @override
  _PokemonCardState createState() => new  _PokemonCardState(pokemon);
}

class _PokemonCardState extends State<PokemonCard> {
  
  PokemonModel myPokemon;
  _PokemonCardState(PokemonModel pokemon) {
    myPokemon = pokemon;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(myPokemon.name),
    );
  }
}
