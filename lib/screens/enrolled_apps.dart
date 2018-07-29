import 'package:flutter/material.dart';
import 'package:zense_app/data/strings.dart';
import 'package:zense_app/looks/themes.dart';

class EnrolledApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appName,
      theme: zenseTheme,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Enrolled Apps"),
          leading: new IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: new Icon(Icons.arrow_back),
          ),
        ),
        body: new Center(
          child: new Text("Enrolled Apps"),
        ),
      ),
    );
  }
}
