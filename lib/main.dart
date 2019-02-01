import 'package:flutter/material.dart';
import 'package:macehub_app/f0.dart';
import 'package:macehub_app/f1.dart';

//import 'packages:badges/badges.dart';
//import 'package:macehub_app/f3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // final appTitle = 'MaceHub';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: appTitle,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final String title = 'MaceHub';
  final PrimaryColor = const Color(0xFFFFFFFF);
  int p = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FirstF();

      case 1:
        return new SecondF();

      case 2:
        return new ThirdF();
      case 3:
        return new FourthF();
      case 4:
        return new FifthF();
    }
  }

  @override
  Widget build(BuildContext context) {
//Center(child: Text('My Page!')),
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {
              setState(() => p = 4);
            },
          ),
        ],
      ),
      //BadgeIconButton(itemCount:_counter)
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('WELCOME'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('EVENTS'),
              onTap: () {
                Navigator.pop(context);
                setState(() => p = 0);
              },
            ),
            ListTile(
              title: Text('CLUBS IN MACE'),
              onTap: () {
                Navigator.pop(context);
                setState(() => p = 1);
              },
            ),
            ListTile(
              title: Text('ABOUT'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                setState(() => p = 2);
              },
            ),
            ListTile(
              title: Text('SETTINGS'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                setState(() => p = 3);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(p),
    );
  }
}
