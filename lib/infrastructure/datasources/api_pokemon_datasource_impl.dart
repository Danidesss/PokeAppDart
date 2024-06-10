import 'package:dio/dio.dart';

import '../../domain/domain.dart';

class ApiPokemonDataSourceImpl extends PokemonDataSource {
  final dio = Dio();

  @override
  Future<List<Pokemon>> fetchPokemons() async {
    final Response response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon?offset=0&limit=100',
    );
    final List<Pokemon> pokemons = [];
    final pokemonsFromApi = List.from(response.data['results']);

    for (Map<String, dynamic> pokemon in pokemonsFromApi) {
      pokemons.add(Pokemon(
        name: pokemon['name'],
        hp: 52,
        pokemonLevel: 5,
        type: 'tumadre',
        xpForNextLevel: 4,
      ));
    }

    return pokemons;
  }
}
