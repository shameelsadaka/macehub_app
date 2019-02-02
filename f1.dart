import 'package:flutter/material.dart';
import 'package:macehub_app/L3.dart';
class ThirdF extends StatelessWidget {
  // final appTitle = 'MaceHub';

  @override
  Widget build(BuildContext context) {
     Container(
      TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'An effective solution for optimum scheduling and managing co-curricular activities of students and organizations

A college like MACE has a plethora of clubs and organizations, both student-run and faculty run, which spans across fundamentally diverse fields. With an empire so vast, it sometimes becomes hard to keep track of all the activities that a student has enrolled in. Also, it is hard for the clubs to choose dates for events and meeting without collision. There does exist some solutions for managing events like tech fests, but there isnt any software
 solution to counter this abovementioned problem with the clubs. Our software presents a solution for countering thisEach club is provided 
 with a WordPress website, which is a subdomain of macehub. Since most of the organizations wouldnt spend much time developing a website, a CMS is used. By default, every organization has complete control over their WordPress installation, along with an FTP account which provides total isolation in case of failure. The organization can replace the WordPress site with other solutions if they want.  An app is provided for ease of use.  A WordPress plugin will be developed for communication between the app and the data. 
    The users and the admins of the club have different privileged logins.
    Admins can set the date of a meeting, an event or push posters and information about various club related activities to the users. This can be done via app or WordPress site.
     Users can enroll for clubs, and ask queries to admins and volunteers and get notifications for the clubs they signed up for. It is done in the app.
     There is a calendar view provided in the app which shows the upcoming meetings and events so that the team lead 
     can easily fix an event without causing a clash. The history of events is provided for ease of documentation of club activities. It also provides a common notice board for displaying college issued notifications
'
  ),
),
    );
  }
}

class FourthF extends StatefulWidget {
  //FourthF({Key key, this.title}) : super(key: key);
  @override
  FourthFState createState() => new FourthFState();
}

class FourthFState extends State<FourthF> {
  bool val = false;
  onSwitchValueChanged(bool newVal) {
    setState(() {
      val = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          new Align(alignment: Alignment.center, child: Text(
            'Notifications',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              letterSpacing: 1.0,
              fontSize: 25.0,
            ),
          ),
          ),
          new Align(alignment: Alignment.center, child:Switch(
              value: val,
              onChanged: (newVal) {
                onSwitchValueChanged(newVal);
              }),
          ),
        ],
          
      ),
      
    );
  }
}

class FifthF extends StatefulWidget {
  //FourthF({Key key, this.title}) : super(key: key);
  @override
  FifthFState createState() => new FifthFState();
}

class FifthFState extends State<FifthF> {
  Widget build(BuildContext context) {
     CalenderViewApp();
      
}
}
