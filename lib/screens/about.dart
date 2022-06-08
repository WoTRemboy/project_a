import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("About"),
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
