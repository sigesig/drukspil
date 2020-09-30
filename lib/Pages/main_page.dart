import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'NavBarPages/favorite_page_widget.dart';
import 'NavBarPages/games_library_widget.dart';
import 'NavBarPages/settings_widget.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

int _currentIndex = 1;
final List<Widget> _children = [
  GamesLibraryWidget(),
  FavoritePageWidget(),
  SettingsWidget()
];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("101 Drukspil",
       style: TextStyle(
         fontWeight: FontWeight.bold,
         color: Colors.white
       ),
       ),
        centerTitle: true,
      ),
      body: Stack(children: <Widget>[
        _children[_currentIndex],
      ],
      ),
      bottomNavigationBar: FancyBottomNavigation(
          tabs:[
            TabData(iconData:Icons.casino, title: "Games Library"),
            TabData(iconData: Icons.star, title: "Favorites"),
            TabData(iconData: Icons.settings, title: "Settings")
          ],
          onTabChangedListener: (int position) {
            setState(() {
              _currentIndex = position;
            });
          },
          initialSelection: 1,
          circleColor: Colors.orange,
        )
    );
  }
}