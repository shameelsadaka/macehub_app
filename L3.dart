import 'package:flutter/material.dart';
import 'package:macehub_app/L1.dart';

class CalenderViewApp extends StatefulWidget {
  //CalenderViewApp({Key key, this.title}) : super(key: key);
  @override
  CalenderViewAppState createState() => new CalenderViewAppState();
}

class CalenderViewAppState extends State<CalenderViewApp> {

  void handleNewDate(date) {
    print("handleNewDate ${date}");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SCHEDULES'),
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 10.0,
          ),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              
              new Text('The Expanded Calendar:'),
              new Calendar(
                onSelectedRangeChange: (range) =>
                    print("Range is ${range.item1}, ${range.item2}"),
                isExpandable: true,
              ),
              new Divider(
                height: 50.0,
              ),
              new Text('A Custom Weekly Calendar:'),
              new Calendar(
                onSelectedRangeChange: (range) =>
                    print("Range is ${range.item1}, ${range.item2}"),
                isExpandable: true,
                dayBuilder: (BuildContext context, DateTime day) {
                  return new InkWell(
                    onTap: () => print("OnTap ${day}"),
                    child: new Container(
                      decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.black38)),
                      child: new Text(
                        day.day.toString(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}