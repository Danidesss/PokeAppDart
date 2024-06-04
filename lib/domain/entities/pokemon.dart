import '../domain.dart';

class Pokemon {
  final String name;
  final String type;
  int pokemonLevel;
  int hp;
  int xpForNextLevel;

  Pokemon({
    required this.name,
    required this.hp,
    required this.pokemonLevel,
    required this.type,
    required this.xpForNextLevel,
  });

  void getCaught() {
    final Logger logger = Logger(appName: 'PokeApp');
    logger.log('$name se unió a tu equipo!');
  }

  @override
  String toString() => name;
}
