import 'package:flutter/material.dart';
import 'package:zense_app/data/strings.dart';
import 'package:zense_app/looks/themes.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appName,
      theme: zenseTheme,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Settings"),
          leading: new IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: new Icon(Icons.arrow_back),
          ),
        ),
        body: new Center(
          child: new Text("Settings"),
        ),
      ),
    );
  }
}
