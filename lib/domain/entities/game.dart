import '../domain.dart';

class Game {
//prop
  final int initialTrainerEnergy;
  final int initialPokeballs;
  final String name;

//cons
  Game({
    required this.initialTrainerEnergy,
    required this.initialPokeballs,
    required this.name,
  });

//met

  void initGame() {
    final Logger logger = Logger(appName: name);

    final Trainer danieldesu = Trainer(
      trainerName: 'danieldesu',
      energyLeft: initialTrainerEnergy,
      pokeballsLeft: initialPokeballs,
      pokemonsCaught: 0,
    );

    logger.log('Iniciando Juego');

    logger.log('Energia inicial: ${danieldesu.energyLeft}');

    initGameLoop(trainer: danieldesu);
  }

  void initGameLoop({required Trainer trainer}) async {
    final Logger logger = Logger(appName: name);
    while (trainer.energyLeft > 0) {
      await trainer.travel();
    }

    logger.log('Puntajeperosinlaweaquecree: ${trainer.pokemonTeam.length}');
    logger.log('Puntaje: ${trainer.pokemonsCaught}');
    logger.log('Tu mierdi Equipo: ${trainer.pokemonTeam}');
    logger.log('Fin del semen');
  }
}
