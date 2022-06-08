import 'package:flutter/material.dart';

class PrizesPage extends StatefulWidget {
  @override
  _PrizesState createState() => _PrizesState();
}

class _PrizesState extends State<PrizesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Prizes"),
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
