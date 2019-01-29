import 'package:flutter/material.dart';


class FirstF extends StatefulWidget {
  //FirstF({Key key, this.title}) : super(key: key);
  @override
  FirstFState createState() => new FirstFState();
}

class FirstFState extends State<FirstF> {
  final PrimaryColor = const Color(0xFFFFFFFF);
  @override
  Widget build(BuildContext context){
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
  //SecondF({Key key, this.title}) : super(key: key);
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
        child:  new Scaffold(
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
            body:TabBarView( 
  children: []),
          
        ),
      ),
    );
  }
}




   
  
