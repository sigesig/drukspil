import 'package:drukspil/Components/customDialogWindow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              //Heading 1
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Heading 2
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,14,0,16),
                  child: Text(
                      "PRIMARY SETTINGS",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5
                          )
                      )
                  ),
                ),
              ),
              InkWell(
                onTap: () {
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
                child: Container(
                  margin: EdgeInsets.only(left: 8, top: 0, right: 8, bottom: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.casino,
                          color: Colors.orange,
                          size: 42.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Suggest A Game",
                              style:  TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Opacity(
                              opacity: .5,
                              child: Text("Press to suggest",
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      letterSpacing: 1.5,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.add_circle,
                          color: Colors.orange,
                          size: 42,
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              //Feedback
              InkWell(
                onTap: () {
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) => CustomDialog(
                      title: "Feedback",
                      buttonText: "Send",
                      header1: "Subject",
                      icon1: Icons.subject,
                      header2: "Comment",
                      icon2: Icons.feedback,
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 8, top: 0, right: 8, bottom: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.feedback,
                          color: Colors.orange,
                          size: 42.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Give Feedback",
                              style:  TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Opacity(
                              opacity: .5,
                              child: Text("Press to give feedback",
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      letterSpacing: 1.5,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.orange,
                          size: 42,
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              //About button
              InkWell(
                onTap: () {
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) => CustomDialog(
                      title: "Feedback",
                      buttonText: "Send",
                      header1: "Subject",
                      icon1: Icons.subject,
                      header2: "Comment",
                      icon2: Icons.feedback,
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 8, top: 0, right: 8, bottom: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.info_outline,
                          color: Colors.orange,
                          size: 42.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("About",
                              style:  TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Opacity(
                              opacity: .5,
                              child: Text("About the App",
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      letterSpacing: 1.5,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.touch_app,
                          color: Colors.orange,
                          size: 42,
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              //Minor settings
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,14,0,8),
                  child: Text(
                      "MINOR SETTINGS",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5
                          )
                      )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.local_drink,
                    color: Colors.orange,
                    size: 38,
                  ),
                  Text("Total mange bajer!",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 16
                      )
                    ),
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (bool value){
                      setState(() {

                      });
                    } ,
                    activeColor: Colors.orange,
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}