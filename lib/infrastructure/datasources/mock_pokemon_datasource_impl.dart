import '../../domain/domain.dart';

final List<Pokemon> wildPokemon = [
  Pokemon(
      name: 'Pikachu',
      hp: 64,
      pokemonLevel: 4,
      type: 'Electric',
      xpForNextLevel: 20),
  Pokemon(
      name: 'Zigzagoon',
      hp: 78,
      pokemonLevel: 5,
      type: 'Electric',
      xpForNextLevel: 60),
  Pokemon(
      name: 'Milotic',
      hp: 70,
      pokemonLevel: 4,
      type: 'Electric',
      xpForNextLevel: 56)
];

class MockPokemonDatasourceImpl extends PokemonDataSource {
  @override
  Future<List<Pokemon>> fetchPokemon() async {
    return wildPokemon;
  }
}
