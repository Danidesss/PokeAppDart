import 'dart:math';

import '../../infrastructure/infrastructure.dart';
import '../domain.dart';

class Trainer {
  final String trainerName;
  int energyLeft;
  List<Pokemon> pokemonTeam = [];
  int pokeballsLeft;
  int pokemonsCaught;

  Trainer({
    required this.trainerName,
    required this.energyLeft,
    required this.pokeballsLeft,
    required this.pokemonsCaught,
  });

  Future<void> travel() async {
    final PokemonDataSource realPokemon = ApiPokemonDataSourceImpl();
    final repository = PokemonRepositoryImpl(dataSource: realPokemon);
    final List<Pokemon> pokemons = await repository.loadPokemons();

    if (pokemons.isNotEmpty) {
      energyLeft -= 5;
      final Logger logger = Logger(appName: 'PokeApp');
      logger.log('Energia Restante = $energyLeft');

      // Genera un índice aleatorio basado en el tamaño de la lista de pokemons
      var rng = Random();
      int randomIndex = rng.nextInt(pokemons.length);

      // Determina si atrapa un Pokémon con 42% de probabilidad
      if (rng.nextInt(100) < 42) {
        catchPokemon(pokemons[randomIndex]);
      }
    } else {
      // Manejar el caso en que no haya pokemons disponibles
      // Por ejemplo, puedes loggear un mensaje
      final Logger logger = Logger(appName: 'PokeApp');
      logger.log('No hay pokémons disponibles para capturar.');
    }
  }

  void catchPokemon(Pokemon pokemon) {
    pokeballsLeft -= 1;
    pokemonsCaught += 1;
    pokemonTeam.add(pokemon);
    pokemon.getCaught();
  }
}
