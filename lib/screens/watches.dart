import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/trash.dart';

class WatchesPage extends StatefulWidget {
  @override
  _WatchesState createState() => _WatchesState();
}

class _WatchesState extends State<WatchesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Grid(),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            right: 40,
          ),
          child: Center(
              child: Text(
            'Watches',
            style: TextStyle(
                color: Color(0xFF527DAA), fontSize: 30, letterSpacing: 1.5),
          )),
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
    );
  }
}
