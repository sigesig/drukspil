import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("101 Drukspil"),
        centerTitle: true,
      ),
      body: Text("OSRS er et legende spill",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30,color: Colors.red),),
    );
  }
}