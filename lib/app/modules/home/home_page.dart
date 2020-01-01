import 'package:flutter/material.dart';
import 'package:pokedex/app/components/pokemon_card.dart';
import 'package:pokedex/app/modules/home/home_controller.dart';
import 'package:pokedex/app/modules/home/home_module.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Pokedex"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokemonModel pokemonModel = new PokemonModel();
  HomeController homeController = HomeModule.to.getBloc<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView( 
      child: Container(
       decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage("lib/app/shared/assets/images/pattern.png"),
         fit: BoxFit.cover)
       ),
        child: Column(children: <Widget>[
          PokemonCard(pokemon: homeController.pokemonList.length >0 ? homeController.pokemonList[0]: pokemonModel,)
        ],),
      ),
      ),
    );
  }
}
