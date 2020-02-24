import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:pokedex/app/shared/Model/PokemonModelComponents/pokeapi_response.dart';
import 'package:pokedex/app/shared/Model/PokemonModelComponents/pokemon_base_info_model.dart';
import 'package:pokedex/app/shared/Model/custom_dio/custom_dio.dart';

class PokeapiGateway extends Disposable {
  
  final CustomDio _dio;
  //dispose will be called automatically
  @override
  void dispose() {}

  PokeapiGateway(this._dio);

  Future<List<PokeApiResponse>> getAllPokemonsRef() async {
    try { 
      var response = await _dio.dioClient.get("/?limit=151&offset=0");
      var pokemons = response.data['results'];
      return (pokemons as List)
        .map((pokemon) => PokeApiResponse.fromJson(pokemon)).toList();
      
    } on DioError catch(error) {
      print(error.message);
    }

  }

  Future<PokemonBaseInfo> getPokemonBasicInformation(int pokemonId) async  {
    try {
      var response = await _dio.dioClient.get("/$pokemonId");
      var pokemonInfo = response.data;
      PokemonBaseInfo pokemonConverter = new PokemonBaseInfo ();

     pokemonConverter.height = pokemonInfo['height'];
      print(pokemonConverter.height);
      
    } on DioError catch(error) {
      print(error.message);
    }
  }
}

