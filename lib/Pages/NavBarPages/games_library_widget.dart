import 'dart:convert';

import 'package:drukspil/Components/category_card.dart';
import 'package:drukspil/Database/LocalData.dart';
import 'package:drukspil/Models/GamesModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GamesLibraryWidget extends StatefulWidget {
  GamesLibraryWidget({Key key}) : super(key: key);

  @override
  _GamesLibraryWidgetState createState() => _GamesLibraryWidgetState();
}

class _GamesLibraryWidgetState extends State<GamesLibraryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),
          BuildGamesCategoryWidget('assets/games/cardgames.JSON', "Card Games", Icons.casino),

        ],
      ),
    );
  }
}


Widget BuildGamesCategoryWidget(String dataString, String categoryName, IconData icon){
  return FutureBuilder(
    future: fetchGamesFromJSON(dataString),
    builder: (BuildContext context, AsyncSnapshot<List<GamesModel>> snapshot) {
      if (snapshot.hasData) {
        return CategoryCard(categoryName: categoryName, games: snapshot.data, cardIcon: icon,);
      } else{
        return Center(child: CircularProgressIndicator());
      }
    },
  );

}
