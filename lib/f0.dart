import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FirstF extends StatefulWidget {
  //FirstF({Key key, this.title}) : super(key: key);
  @override
  FirstFState createState() => new FirstFState();
}

class FirstFState extends State<FirstF> {
  final PrimaryColor = const Color(0xFFFFFFFF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: PrimaryColor,
            centerTitle: true,
            title: Text(
              "Events",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            leading: new Container(),
          ),
          body: new TabBar(
            tabs: [
              new Tab(text: 'Upcoming Events'),
              new Tab(text: 'Past Events'),
            ],
            labelColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

class SecondF extends StatefulWidget {
  //SecondFF({Key key, this.title}) : super(key: key);
  @override
  SecondFState createState() => new SecondFState();
}

class SecondFState extends State<SecondF> {
  final PrimaryColor = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: PrimaryColor,
            centerTitle: true,
            title: Text(
              "Clubs",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            leading: new Container(),
            bottom: new TabBar(
              tabs: [
                new Tab(text: 'All Clubs'),
                new Tab(text: 'Technical'),
                new Tab(text: 'Social'),
                new Tab(text: 'Other'),
              ],
              labelColor: Colors.black,
            ),
          ),
          body: TabBarView(
            children: [
              SecondFF(),
            ],
          ),
        ),
      ),
    );
  }
}

class User {
  final int index;
  final String name;
  final String picture;
  User(this.index, this.name, this.picture);
}

class SecondFF extends StatefulWidget {
  //SecondFF({Key key, this.title}) : super(key: key);
  @override
  SecondFFState createState() => new SecondFFState();
}

class SecondFFState extends State<SecondFF> {
  Future<List<User>> _getUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cqXUbomQqG?indent=2");
    var jsonData = json.decode(data.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u["index"], u["name"], u["picture"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: _getUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text("Loading...."),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(snapshot.data[index].picture),
                        ),
                        title: Text(snapshot.data[index].name),
                      );
                    });
              }
            }));
  }
}

   
  
