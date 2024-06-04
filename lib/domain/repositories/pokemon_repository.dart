import '../domain.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> loadPokemons();
}
