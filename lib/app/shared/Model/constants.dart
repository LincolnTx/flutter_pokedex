import 'package:pokedex/app/shared/Model/pokemon_types.dart';

const BASE_URL = "https://pokeapi.co/api/v2/pokemon";
// add the pokemon index on this two urls
const POKEMON_URL = "https://pokeapi.co/api/v2/pokemon/";
const POKEMON_SPECIES_URL = "https://pokeapi.co/api/v2/pokemon-species/";

const TYPE_COLORS = {
  PokemonTypes.bug:'BCCA21',
  PokemonTypes.dark:'8C6855',
  PokemonTypes.dragon:'8A76FF',
  PokemonTypes.electric:'FDE53C',
  PokemonTypes.fairy:'FAADFF',
  PokemonTypes.fighting:'A85644',
  PokemonTypes.fire:'FA5543',
  PokemonTypes.flying:'79A4FF',
  PokemonTypes.ghots:'7975D6',
  PokemonTypes.grass:'8CD751',
  PokemonTypes.ground:'EDCC56',
  PokemonTypes.ice:'96F1FF',
  PokemonTypes.normal:'BABAAC',
  PokemonTypes.poison:'AB5DA3',
  PokemonTypes.psychic:'F662B2',
  PokemonTypes.rock:'CDBD72',
  PokemonTypes.steel:'C3C1D8',
  PokemonTypes.water:'55ACFF'
};