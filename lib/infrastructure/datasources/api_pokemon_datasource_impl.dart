import 'package:dio/dio.dart';

import '../../domain/domain.dart';

class ApiPokemonDataSourceImpl extends PokemonDataSource {
  final dio = Dio();

  @override
  Future<List<Pokemon>> fetchPokemon() async {
    final Response response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon/ditto',
    );

    final ditto = Pokemon(
      hp: response.data['stats'][0]['base_stat'],
      type: response.data['types'][0]['type']['name'],
      name: response.data['forms'][0]['name'],
      pokemonLevel: 0,
      xpForNextLevel: 0,
    );
    return [ditto];
  }
}
