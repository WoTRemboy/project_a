import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Blog"),
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
