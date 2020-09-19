import 'dart:collection';

///This Model is used to get the JSON data
class GamesModel {
  String gamename;
  String description;
  List<String> needed;
  String image;
  List<String> synonymsNames;
  int difficulty;

  GamesModel(this.gamename,this.description,this.image,this.needed,this.synonymsNames,this.difficulty);
  // Constructor used for conversion from JSON to Games.
  factory GamesModel.fromJson(Map<String, dynamic> json){
    return GamesModel(
      json['gamename'] as String,
      json['description'] as String,
      json['image'] as String,
      (json['needed'] as List)?.map((e) => e as String)?.toList(),
      (json['synonymNames'] as List)?.map((e) => e as String)?.toList(),
      json['difficulty'] as int
    );
  }
}

