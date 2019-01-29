import 'package:flutter/material.dart';

class ThirdF extends StatelessWidget {
  // final appTitle = 'MaceHub';

  @override
  Widget build(BuildContext context) {
    return Container();
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
    return Container();
  }
}
