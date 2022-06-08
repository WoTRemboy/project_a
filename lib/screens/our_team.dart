import 'package:flutter/material.dart';

class OurTeamPage extends StatefulWidget {
  @override
  _OurTeamState createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeamPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Our Team"),
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
