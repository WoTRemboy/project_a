import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/trash.dart';

class SmartPhonesPage extends StatefulWidget {
  @override
  _SmartPhonesState createState() => _SmartPhonesState();
}

class _SmartPhonesState extends State<SmartPhonesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Grid2(),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            right: 40,
          ),
          child: Center(
              child: Text(
            'SmartPhones',
            style: TextStyle(
                color: Color(0xFF527DAA), fontSize: 30, letterSpacing: 1.5),
          )),
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
    );
  }
}
