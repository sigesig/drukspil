import 'package:flutter/material.dart';

class FavoritePageWidget extends StatefulWidget {
  FavoritePageWidget({Key key}) : super(key: key);

  @override
  _FavoritePageWidgetState createState() => _FavoritePageWidgetState();
}

class _FavoritePageWidgetState extends State<FavoritePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
          children: <Widget>[
            Align(alignment: Alignment.bottomCenter,
            child: RaisedButton(
              onPressed: (){},
              child: Text("Lucky Button",
              style: TextStyle(),
              )
            ),
            )
          ],
        )
    );
  }
}