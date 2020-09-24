import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Text("Settings", style: TextStyle(fontSize: 50, color: Colors.black), ),),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: RaisedButton(onPressed: (){},
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.orange),
                    ), color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Suggest Game", style: TextStyle(fontSize: 30, color: Colors.orange),)),
                )
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: RaisedButton(onPressed: (){},
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.orange),
                    ), color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Feedback", style: TextStyle(fontSize: 30, color: Colors.orange),)),
                    )
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: RaisedButton(onPressed: (){},
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.orange),
                    ), color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("About", style: TextStyle(fontSize: 30, color: Colors.orange),)),
                )
            ),
          ],
        ),
      )
    );
  }
}