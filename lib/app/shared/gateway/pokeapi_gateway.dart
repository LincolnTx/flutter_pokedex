import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:pokedex/app/shared/Model/custom_dio/custom_dio.dart';
import 'package:pokedex/app/shared/Model/pokemon_model.dart';

class PokeapiGateway extends Disposable {
  
  final CustomDio _dio;
  //dispose will be called automatically
  @override
  void dispose() {}

  PokeapiGateway(this._dio);

  Future<List<PokemonModel>> getAllPokemons() async {
    try { 
      var response = await _dio.dioClient.get("/?limit=151&offset=0");
      var pokemons = response.data['results'];
      return (pokemons as List)
        .map((pokemon) => PokemonModel.fromJson(pokemon)).toList();
      
    } on DioError catch(error) {
      print(error.message);
    }

  }
}

