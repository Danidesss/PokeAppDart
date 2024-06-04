import '../../domain/domain.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonDataSource dataSource;

  PokemonRepositoryImpl({required this.dataSource});

  @override
  Future<List<Pokemon>> loadPokemons() {
    return dataSource.fetchPokemon();
  }
}
