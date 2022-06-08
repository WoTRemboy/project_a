import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_login_ui/screens/helmets.dart';
import 'package:flutter_login_ui/screens/motorbike_preview.dart';
import 'package:flutter_login_ui/screens/motorbikes.dart';
import 'package:flutter_login_ui/screens/smart_phones.dart';
import 'package:flutter_login_ui/screens/watches.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
      children: <Widget>[
        Carousel(),
        _buildSocialBtnRow(context),
        _buildSocialBtnRow2(context),
        //Grid(),
      ],
    ));
  }
}

class Carousel extends StatefulWidget {
  Carousel() : super();

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
                height: 400.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 5),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: [
                  Container(
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Special Deal',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                              Text(
                                'Motorbike',
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black),
                              ),
                            ],
                          ),
                          Container(
                            height: 200,
                            child: Image(
                                image:
                                    AssetImage('assets/avatars/motorbike.jpg')),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'DP RACING',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Real price: \$2,180',
                                style: TextStyle(fontSize: 10),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 18.0),
                                width: 250,
                                child: RaisedButton(
                                  elevation: 7.0,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MotorbikePreviewPage()),
                                    );
                                  },
                                  padding: EdgeInsets.all(10.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Colors.white,
                                  child: Text(
                                    'Try: \$3.60',
                                    style: TextStyle(
                                      color: Color(0xFF527DAA),
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: new Border.all(
                              width: 1.0, color: Colors.blueGrey[100]),
                          color: Colors.white)),
                  Container(
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Special Deal',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                              Text(
                                'SmartPhone',
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black),
                              ),
                            ],
                          ),
                          Container(
                            height: 200,
                            child: Image(
                                image: AssetImage(
                                    'assets/avatars/z_fold2_image.jpg')),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Samsung Galaxy Z Fold2',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Real price: \$1,999',
                                style: TextStyle(fontSize: 10),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 18.0),
                                width: 250,
                                child: RaisedButton(
                                  elevation: 7.0,
                                  onPressed: () {},
                                  padding: EdgeInsets.all(10.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Colors.white,
                                  child: Text(
                                    'Try: \$3.50',
                                    style: TextStyle(
                                      color: Color(0xFF527DAA),
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: new Border.all(
                              width: 1.0, color: Colors.blueGrey[100]),
                          color: Colors.white)),
                  Container(
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Special Deal',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                              Text(
                                'Watch',
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black),
                              ),
                            ],
                          ),
                          Container(
                            height: 200,
                            child: Image(
                                image: AssetImage(
                                    'assets/avatars/apple_watch_image.jpg')),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Apple Watch Series 5',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Real price: \$399',
                                style: TextStyle(fontSize: 10),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 18.0),
                                width: 250,
                                child: RaisedButton(
                                  elevation: 7.0,
                                  onPressed: () {},
                                  padding: EdgeInsets.all(10.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Colors.white,
                                  child: Text(
                                    'Try: \$1.20',
                                    style: TextStyle(
                                      color: Color(0xFF527DAA),
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: new Border.all(
                              width: 1.0, color: Colors.blueGrey[100]),
                          color: Colors.white)),
                  Container(
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Special Deal',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                              Text(
                                'Helmet',
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black),
                              ),
                            ],
                          ),
                          Container(
                            height: 200,
                            child: Image(
                                image: AssetImage(
                                    'assets/avatars/moto_helmet_image.jpg')),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Casco Double Lens',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Real price: \$62.54',
                                style: TextStyle(fontSize: 10),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 18.0),
                                width: 250,
                                child: RaisedButton(
                                  elevation: 7.0,
                                  onPressed: () {},
                                  padding: EdgeInsets.all(10.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Colors.white,
                                  child: Text(
                                    'Try: \$0.40',
                                    style: TextStyle(
                                      color: Color(0xFF527DAA),
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: new Border.all(
                              width: 1.0, color: Colors.blueGrey[100]),
                          color: Colors.white)),
                ])
          ]),
    );
  }
}

Widget _buildSocialBtn(Function onTap, AssetImage logo) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 60.0,
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}

Widget _buildSocialBtnRow(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildSocialBtn(
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MotorbikesPage()),
            );
          },
          AssetImage(
            'assets/avatars/motorbike_logos.png',
          ),
        ),
        _buildSocialBtn(
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WatchesPage()),
            );
          },
          AssetImage(
            'assets/avatars/watches_logo.jpg',
          ),
        ),
      ],
    ),
  );
}

Widget _buildSocialBtnRow2(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(bottom: 30),
    //EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildSocialBtn(
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelmetsPage()),
            );
          },
          AssetImage(
            'assets/avatars/crashhelmet_logo.jpg',
            // fit: BoxFit.fill
          ),
        ),
        _buildSocialBtn(
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SmartPhonesPage()),
            );
          },
          AssetImage(
            'assets/avatars/smartphones_logo.png',
          ),
        ),
      ],
    ),
  );
}
