import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/trash.dart';

class HelmetsPage extends StatefulWidget {
  @override
  _HelmetsState createState() => _HelmetsState();
}

class _HelmetsState extends State<HelmetsPage> {
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
            'Helmets',
            style: TextStyle(
                color: Color(0xFF527DAA), fontSize: 30, letterSpacing: 1.5),
          )),
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
    );
  }
}
