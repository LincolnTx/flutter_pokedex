import 'package:flutter/material.dart';
import 'package:pokedex/app/components/pokemon_detail.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';

class PokemonCard extends StatefulWidget {
  final PokemonCardModel pokemon;

  const PokemonCard({Key key, @required this.pokemon}) : super(key: key);

  @override
  _PokemonCardState createState() => new  _PokemonCardState(pokemon);
}

class _PokemonCardState extends State<PokemonCard> {
  
  PokemonCardModel myPokemon;
  _PokemonCardState(PokemonCardModel pokemon) {
    myPokemon = pokemon;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
     child: Wrap(
       runSpacing: 20,
       children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PokemonDetail())
              );
           },
            child: Wrap(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            color: Color(0xffF7F7F7),
                            padding: EdgeInsets.all(12),
                            width: 250,
                            child: 
                              Text(
                                myPokemon.pokemonIndex,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                            ),
                          ),
                        ),
                        // this container is use to set a line below the index 
                        Container(
                        width: 250,
                        height: 1,
                        color: Colors.grey,
                       ),
                        Container(
                          child: Image.network(myPokemon.imageUrl),
                          padding: EdgeInsets.only(bottom: 10, top: 5),
                        ),
                        Container(
                          //  padding: EdgeInsets.all(10),
                          child: Text(
                            myPokemon.name,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
     ),
    );
  }
}
