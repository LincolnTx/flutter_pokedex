import 'PokemonModelsComponents/abilities_model.dart';
import 'PokemonModelsComponents/ability_model.dart';
import 'PokemonModelsComponents/forms_model.dart';
import 'PokemonModelsComponents/games_indices_model.dart';
import 'PokemonModelsComponents/held_items_model.dart';
import 'PokemonModelsComponents/moves_model.dart';
import 'PokemonModelsComponents/sprites_model.dart';
import 'PokemonModelsComponents/stats_model.dart';
import 'PokemonModelsComponents/types_model.dart';

class pokemon_model {
  List<Abilities> abilities;
  int baseExperience;
  List<Forms> forms;
  List<GameIndices> gameIndices;
  int height;
  List<HeldItems> heldItems;
  int id;
  bool isDefault;
  String locationAreaEncounters;
  List<Moves> moves;
  String name;
  int order;
  Ability species;
  Sprites sprites;
  List<Stats> stats;
  List<Types> types;
  int weight;

  pokemon_model(
      {this.abilities,
      this.baseExperience,
      this.forms,
      this.gameIndices,
      this.height,
      this.heldItems,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      this.moves,
      this.name,
      this.order,
      this.species,
      this.sprites,
      this.stats,
      this.types,
      this.weight});

  pokemon_model.fromJson(Map<String, dynamic> json) {
    if (json['abilities'] != null) {
      abilities = new List<Abilities>();
      json['abilities'].forEach((v) {
        abilities.add(new Abilities.fromJson(v));
      });
    }
    baseExperience = json['base_experience'];
    if (json['forms'] != null) {
      forms = new List<Forms>();
      json['forms'].forEach((v) {
        forms.add(new Forms.fromJson(v));
      });
    }
    if (json['game_indices'] != null) {
      gameIndices = new List<GameIndices>();
      json['game_indices'].forEach((v) {
        gameIndices.add(new GameIndices.fromJson(v));
      });
    }
    height = json['height'];
    if (json['held_items'] != null) {
      heldItems = new List<HeldItems>();
      json['held_items'].forEach((v) {
        heldItems.add(new HeldItems.fromJson(v));
      });
    }
    id = json['id'];
    isDefault = json['is_default'];
    locationAreaEncounters = json['location_area_encounters'];
    if (json['moves'] != null) {
      moves = new List<Moves>();
      json['moves'].forEach((v) {
        moves.add(new Moves.fromJson(v));
      });
    }
    name = json['name'];
    order = json['order'];
    species =
        json['species'] != null ? new Ability.fromJson(json['species']) : null;
    sprites =
        json['sprites'] != null ? new Sprites.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      stats = new List<Stats>();
      json['stats'].forEach((v) {
        stats.add(new Stats.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types = new List<Types>();
      json['types'].forEach((v) {
        types.add(new Types.fromJson(v));
      });
    }
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.abilities != null) {
      data['abilities'] = this.abilities.map((v) => v.toJson()).toList();
    }
    data['base_experience'] = this.baseExperience;
    if (this.forms != null) {
      data['forms'] = this.forms.map((v) => v.toJson()).toList();
    }
    if (this.gameIndices != null) {
      data['game_indices'] = this.gameIndices.map((v) => v.toJson()).toList();
    }
    data['height'] = this.height;
    if (this.heldItems != null) {
      data['held_items'] = this.heldItems.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['is_default'] = this.isDefault;
    data['location_area_encounters'] = this.locationAreaEncounters;
    if (this.moves != null) {
      data['moves'] = this.moves.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['order'] = this.order;
    if (this.species != null) {
      data['species'] = this.species.toJson();
    }
    if (this.sprites != null) {
      data['sprites'] = this.sprites.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.map((v) => v.toJson()).toList();
    }
    if (this.types != null) {
      data['types'] = this.types.map((v) => v.toJson()).toList();
    }
    data['weight'] = this.weight;
    return data;
  }
}
