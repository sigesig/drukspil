import 'package:drukspil/Models/GamesModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final List<GamesModel> games;
  final String categoryName;
  final IconData cardIcon;

  CategoryCard({Key key, this.games,this.categoryName,this.cardIcon}) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    //List<Widget> list = games.map((g) => GameGridItem(games: g)).toList();
    print("In Cards");
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ],
            border: Border.all(
              color: Colors.orange,
              width: 2.5,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                widget.cardIcon,
                color: Colors.orange,
              ),
              Text(widget.categoryName)
            ],
          ),
        ),
      ),
    );
  }
}