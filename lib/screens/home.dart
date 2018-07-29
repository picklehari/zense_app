import 'package:flutter/material.dart';
import 'package:zense_app/data/strings.dart';
import 'package:zense_app/screens/settings.dart';
import 'package:zense_app/screens/enrolled_apps.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        '/settings': (context) => Settings(),
        '/enrolled': (context) => EnrolledApps(),
      },
      home: new Scaffold(
        appBar: new AppBar(
          actions: <Widget>[
            new IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
          title: new Text(appName),
        ),
        drawer: new Drawer(
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new DrawerHeader(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Icon(Icons.verified_user),
                    new Text(
                      "John Doe",
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      "john@foo.bar",
                      style: new TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.w100),
                    )
                  ],
                ),
                decoration: new BoxDecoration(
                  color: Colors.greenAccent[200],
                ),
              ),
              new ListTile(
                leading: new Icon(Icons.shop),
                title: new Text("Enrolled Apps"),
                onTap: () {
                  Navigator.pushNamed(context, '/enrolled');
                },
              ),
              new ListTile(
                leading: new Icon(Icons.settings),
                title: new Text("Settings"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/settings');
                },
              ),
              new AboutListTile(
                child: new Text("About"),
              ),
            ],
          ),
        ),
        body: new Container(),
        bottomNavigationBar: new BottomNavigationBar(
          items: new List<BottomNavigationBarItem>(
            new BottomNavigationBarItem(
              icon: Icon(Icons.new_releases),
            ),
          ),
        ),
      ),
    );
  }
}
