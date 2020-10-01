import 'package:drukspil/Components/customDialogWindow.dart';
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
              child: Text("Settings",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //Suggest game
            Container(
              margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: RaisedButton(onPressed: (){
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) => CustomDialog(
                      title: "Suggest Game",
                      buttonText: "Send",
                      header1: "Game Name",
                      icon1: Icons.casino,
                      header2: "Description",
                      icon2: Icons.edit,
                    ),
                  );
                },
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
            //Feedback
            Container(
                margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: RaisedButton(onPressed: (){
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) => CustomDialog(
                      title: "Feedback",
                      buttonText: "Send",
                      header1: "Subject",
                      icon1: Icons.subject,
                      header2: "Comment",
                      icon2: Icons.comment,
                    ),
                  );
                },
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
            //about
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