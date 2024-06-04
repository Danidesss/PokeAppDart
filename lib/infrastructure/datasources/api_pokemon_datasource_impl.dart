import 'package:dio/dio.dart';

import '../../domain/domain.dart';

class ApiPokemonDataSourceImpl extends PokemonDataSource {
  final dio = Dio();

  @override
  Future<List<Pokemon>> fetchPokemon() async {
    final Response response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon/ditto',
    );

    final List<Pokemon> pokemons = [];
    for (var json in response.data['moves']) {
      pokemons.add(Pokemon.fromJson(json));
    }
    return pokemons;

   

  }
}
