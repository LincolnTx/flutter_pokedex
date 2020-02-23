import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
      body: 
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/app/shared/assets/images/pattern.png"),
          fit: BoxFit.cover
          )
         ),
        child:
        Center(
          child:       
            Container(
              width: 450,
              height: 500,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular((6))
                ),
                // in this card must be multiple informations about the pokemon
                // but for now i just wanna try to make some progress bar  for the stats
                child: Center(
                  child: new LinearPercentIndicator(
                    width: 400,
                    lineHeight: 14.0,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blueAccent,
                    center: Text("50"),
                  ),
                ),
              )
            ),
        ),
      )

    );
  }
}