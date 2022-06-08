import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/about.dart';
import 'package:flutter_login_ui/screens/blog.dart';
import 'package:flutter_login_ui/screens/cart.dart';
import 'package:flutter_login_ui/screens/main_page.dart';
import 'package:flutter_login_ui/screens/how_to_play.dart';
import 'package:flutter_login_ui/screens/our_team.dart';
import 'package:flutter_login_ui/screens/prizes.dart';
import 'package:flutter_login_ui/screens/profile.dart';
import 'package:flutter_login_ui/screens/referal.dart';
import 'package:flutter_login_ui/screens/winners.dart';
//import 'dart:html';

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _currentIndex = 2;
  final List<Widget> tabs = [
    ProfilePage(),
    CartPage(),
    MainPage(),
    HowToPlayPage(),
    ReferalPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          backgroundColor: Colors.blueGrey[100],
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_ind),
                title: Text('Profile'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Cart'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow),
                title: Text('Play'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.help),
                title: Text('How to play'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add),
                title: Text('Referal'),
                backgroundColor: Colors.blue),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.blueGrey[200],
                  Colors.blueGrey[200]
                ])),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.only(left: 0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: new ExactAssetImage(
                                    'assets/avatars/avatar_1.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(color: Colors.black12))),
                        width: 162,
                        height: 110,
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Artyom Meshustic',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontSize: 18.0,
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 4.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ]),
                              ),
                            ),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.black12))),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: Text(
                                  '  mishustic@gmail.com',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 12.0,
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 4.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 5),
                              child: Center(
                                child: Text(
                                  'Credits: \$548.59',
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 18.0,
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 4.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ]),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            CustomListTile(Icons.card_giftcard, 'Prizes', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrizesPage()));
            }),
            CustomListTile(Icons.supervisor_account, 'Our team', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OurTeamPage()));
            }),
            CustomListTile(Icons.library_books, 'Blog', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BlogPage()));
            }),
            CustomListTile(Icons.stars, 'Winners', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WinnersPage()));
            }),
            CustomListTile(Icons.info, 'About', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            }),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
            splashColor: Colors.blueGrey,
            onTap: onTap,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(icon),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            )),
      ),
    );
  }
}

// class ChangePage extends StatefulWidget {
//   @override
//   _ChangePage createState() => _ChangePage();
// }

// class _ChangePage extends State<ChangePage> {
//   int _currentIndex1 = 2;
//   final List<Widget> changeTabs = [
//     Profile(),
//     Cart(),
//     MainPage(),
//     HowToPlay(),
//     Referal(),
//   ];

//   void onTappedBar(int index) {
//     setState(() {
//       _currentIndex1 = index;
//     });
//   }
// }
