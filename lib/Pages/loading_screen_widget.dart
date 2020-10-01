import 'package:flutter/material.dart';

class LoadingScreenWidget extends StatefulWidget {
  LoadingScreenWidget({Key key}) : super(key: key);

  @override
  _LoadingScreenWidgetState createState() => _LoadingScreenWidgetState();
}

class _LoadingScreenWidgetState extends State<LoadingScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Container(
      color: Colors.white,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("ahhaha"),
            Image(
                image: AssetImage('Assets/Images/picture3.png')
            ),
          ],
        ),
      ),
    ),
    );

  }
}