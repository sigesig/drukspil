import 'dart:convert';

import 'package:drukspil/Models/GamesModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Used to get the json file from assets
Future<String>_loadFromAsset(String dataString) async {
  return await rootBundle.loadString(dataString);
}

Future<List<GamesModel>> fetchGamesFromJSON(String dataString) async {
  WidgetsFlutterBinding.ensureInitialized();
  final String dataLocation = await _loadFromAsset(dataString);
  // Get the JSON data from the response
  print("Really nigga");
  final List<dynamic> data = await jsonDecode(dataLocation);
  // Convert JSON to Games by using the named constructor from Json
  return data.map((json) => GamesModel.fromJson(json)).toList();
}