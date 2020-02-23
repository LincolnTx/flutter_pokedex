import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
  PokemonCardModel pokemonModel = new PokemonCardModel();
  HomeController homeController = HomeModule.to.getBloc<HomeController>();
  ScrollController scrollController = new ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }

  @override
  HomePage() {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        homeController.getNew();
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage("lib/app/shared/assets/images/pattern.png"),
         fit: BoxFit.cover
         ),
       ),
       child: Column(
         children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child:
            Observer(
              builder: (_) {
                return ListView.builder(
                  controller: scrollController,
                  itemCount: homeController.pokemonsInfoList.length,
                  itemBuilder: (_, index) {
                    PokemonCardModel pokemon = homeController.pokemonsInfoList[index];
                    return PokemonCard(pokemon: pokemon,);
                  },
                );
              },
            )

          ),
         ],
       ),
       )
      
      );
    
  }
}
