import 'package:flutter/material.dart';

class PokemonDetail extends StatefulWidget {
  @override
  _PokemonDetailState createState() => _PokemonDetailState();
}

class _PokemonDetailState extends State<PokemonDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon Details"),
      ),
      body: Center(
        child: Text("This is the pokemon detail page"),
      ),
    );
  }
}