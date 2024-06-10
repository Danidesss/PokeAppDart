// import 'dart:math';
import 'domain/domain.dart';

void main() {
  final Game pokeApp = Game(
    initialTrainerEnergy: 300,
    initialPokeballs: 5,
    name: 'PokeApp',
  );
  pokeApp.initGame();
}




// void main() {
//   final List<Pokemon> wildPokemon = [
//     Pokemon(
//         name: 'Pikachu',
//         hp: 64,
//         pokemonLevel: 4,
//         type: 'Electric',
//         xpForNextLevel: 20),
//     Pokemon(
//         name: 'Zigzagoon',
//         hp: 78,
//         pokemonLevel: 5,
//         type: 'Electric',
//         xpForNextLevel: 60),
//     Pokemon(
//         name: 'Milotic',
//         hp: 70,
//         pokemonLevel: 4,
//         type: 'Electric',
//         xpForNextLevel: 56)
//   ];

//   final Trainer danieldesu = Trainer(
//       trainerName: 'danieldesu',
//       energyLeft: 20,
//       pokeballsLeft: 5,
//       pokemonsCaught: 0);

//   print('Energia inicial: ${danieldesu.energyLeft}');
//   print('Cantidad de Pokebolassspapu: ${danieldesu.pokeballsLeft}');
//   danieldesu.travel();
//   var chancePokemonculiao1 = Random().nextInt(100);
//   var chancePokemonculiao2 = Random().nextInt(100);
//   var chancePokemonculiao3 = Random().nextInt(100);
//   var chancePokemonculiao4 = Random().nextInt(100);

//   print(
//       'Si el numero es <43, aparece un pokemon , obtuviste un $chancePokemonculiao1');
//   if (chancePokemonculiao1 <= 42) {
//     final int randomIndex = Random().nextInt(wildPokemon.length);
//     final Pokemon encounteredPokemon = wildPokemon[randomIndex];
//     print('Encontraste un ${encounteredPokemon.name}');
//     danieldesu.catchPokemon(encounteredPokemon);
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//   } else {
//     print('No encontraste niunaweaXDDDDDDDDDD.');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//   }

//   print(
//       '------------------------------------------------------------------------');

//   print('Energia inicial: ${danieldesu.energyLeft}');
//   danieldesu.travel();
//   print(
//       'Si el numero es <43, aparece un pokemon , obtuviste un $chancePokemonculiao2');
//   if (chancePokemonculiao2 <= 42) {
//     final int randomIndex = Random().nextInt(wildPokemon.length);
//     final Pokemon encounteredPokemon = wildPokemon[randomIndex];
//     print('Encontraste un ${encounteredPokemon.name}');
//     danieldesu.catchPokemon(encounteredPokemon);
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//   } else {
//     print('No encontraste niunaweaXDDDDDDDDDD.');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//   }
//   print(
//       '------------------------------------------------------------------------');

//   print('Energia inicial: ${danieldesu.energyLeft}');
//   danieldesu.travel();
//   print(
//       'Si el numero es <43, aparece un pokemon , obtuviste un $chancePokemonculiao3');
//   if (chancePokemonculiao3 <= 42) {
//     final int randomIndex = Random().nextInt(wildPokemon.length);
//     final Pokemon encounteredPokemon = wildPokemon[randomIndex];
//     print('Encontraste un ${encounteredPokemon.name}');
//     danieldesu.catchPokemon(encounteredPokemon);
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//   } else {
//     print('No encontraste niunaweaXDDDDDDDDDD.');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//   }
//   print(
//       '------------------------------------------------------------------------');

//   print('Energia inicial: ${danieldesu.energyLeft}');
//   danieldesu.travel();
//   print(
//       'Si el numero es <43, aparece un pokemon , obtuviste un $chancePokemonculiao4');
//   if (chancePokemonculiao4 <= 42) {
//     final int randomIndex = Random().nextInt(wildPokemon.length);
//     final Pokemon encounteredPokemon = wildPokemon[randomIndex];
//     print('Encontraste un ${encounteredPokemon.name}');
//     danieldesu.catchPokemon(encounteredPokemon);
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//   } else {
//     print('No encontraste niunaweaXDDDDDDDDDD.');
//     print(
//         'Tu equipo: ${danieldesu.pokemonTeam.map((pokemon) => pokemon.name)}');
//     print('Pokeballs Restantes: ${danieldesu.pokeballsLeft}');
//     print(
//         'Realizaste un viaje y ahora te queda ${danieldesu.energyLeft} de energia');
//   }

//   if (danieldesu.energyLeft == 0) {
//     print('Te quedaste sin energia conchetumare');
//   }
//   if (chancePokemonculiao1 <= 42 &&
//       chancePokemonculiao2 <= 42 &&
//       chancePokemonculiao3 <= 42 &&
//       chancePokemonculiao4 <= 42) {
//     print('Juegate un loto ql XD');
//   }
//   if (chancePokemonculiao1 >= 43 &&
//       chancePokemonculiao2 >= 43 &&
//       chancePokemonculiao3 >= 43 &&
//       chancePokemonculiao4 >= 43) {
//     print('Matate pq mas mala cuea no podi tener :vvv');
//   }
//   print('Puntos obtenidos ${danieldesu.pokemonsCaught}');
// }
