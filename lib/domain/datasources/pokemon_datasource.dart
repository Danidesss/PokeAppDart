import '../domain.dart';

abstract class PokemonDataSource {
  Future<List<Pokemon>> fetchPokemon();
}
