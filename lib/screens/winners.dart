import 'package:flutter/material.dart';

class WinnersPage extends StatefulWidget {
  @override
  _WinnersState createState() => _WinnersState();
}

class _WinnersState extends State<WinnersPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Winners"),
      ),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(right: 40),
          child: Center(
            child: Image.asset(
              ('assets/logos/line_in_less.png'),
              height: 35,
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
    );
  }
}
