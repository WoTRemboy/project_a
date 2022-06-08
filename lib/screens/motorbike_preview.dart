import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/cart.dart';

class MotorbikePreviewPage extends StatefulWidget {
  @override
  _MotorbikePreviewState createState() => _MotorbikePreviewState();
}

class _MotorbikePreviewState extends State<MotorbikePreviewPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                  height: 350,
                  child:
                      Image(image: AssetImage('assets/avatars/motorbike.jpg'))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'DP RACING',
                  style: TextStyle(fontSize: 30, fontFamily: 'OpenSans'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Power:  ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF527DAA),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '>2000W',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Tire Size:  ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF527DAA),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '16/17inch',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Voltage:  ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF527DAA),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '72V',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48),
                      child: Text(
                        'Wheelbase:  ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF527DAA),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '1210mm',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Max Speed:  ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF527DAA),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '100km/H',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Range:  ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF527DAA),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '60-90km',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Net Weight:  ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF527DAA),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '115kgs with out Battery',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'Tickets',
                  style: TextStyle(fontSize: 30, fontFamily: 'OpenSans'),
                ),
              ),
              Text('\$3.60 for one'),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: MySlider(),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                width: 300,
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.white,
                  child: Text(
                    'Add Tickets To The Cart',
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
        ),
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

class MySlider extends StatefulWidget {
  MySlider({Key key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _currentSliderValue = 3;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 10,
      divisions: 10,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}
