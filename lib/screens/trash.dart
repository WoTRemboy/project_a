import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Bikes", "Watches", "Phones", "Crash Helmets"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          categories[index],
          style: TextStyle(
              color: selectedIndex == index ? Colors.black : Colors.transparent,
              fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 2,
          width: 30,
          color: selectedIndex == index ? Colors.black : Colors.transparent,
        )
      ],
    );
  }
}

class Grid2 extends StatefulWidget {
  @override
  _Grid2 createState() => _Grid2();
}

class _Grid2 extends State<Grid2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'iPhone 11 Pro Max',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$1,199',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset(
                        'assets/avatars/iphone11_pro_max.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$2.29',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Galaxy Note 20 Ultra',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$1,199',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/note20.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$2.29',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Xiaomi Mi 10 Ultra',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$899',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/mi10_ultra.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$1.99',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Huawei P40 Pro',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$899',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/p40_pro.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$1.99',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Galaxy Z Flip',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$1,600',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/z_flip.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$2.59',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Google Pixel 4',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$799',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/pixel4.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$1.89',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'iPhone 11 Pro Max',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$1,199',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset(
                        'assets/avatars/iphone11_pro_max.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$2.29',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Galaxy Note 20 Ultra',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$1,199',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/note20.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$2.29',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class Grid extends StatefulWidget {
  @override
  _Grid createState() => _Grid();
}

class _Grid extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Ducati Panigale V2',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$16,495.00',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/motorcycle.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$5.50',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Triumph Thruxton RS',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$16,200.00',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/bike.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$5.00',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '2020 ZERO S ZF7.2',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$13,490',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/bike1.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$4.90',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '2020 Zero ZF14.4',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$19 495,00',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/bike2.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$5.90',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Cruiser Motorcycles',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$23,995',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/bike3.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$6.80',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'RMK E2',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: \$27,000',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/bike4.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: \$7.29',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Ducati Panigale V2',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: 16,495.00',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/motorcycle.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: 5.50',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
          new Container(
              child: new Card(
            elevation: 5.0,
            margin:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
            child: new Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Triumph Thruxton RS',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Text('Real price: 16,200.00',
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: new Image.asset('assets/avatars/bike.jpg',
                        fit: BoxFit.fill),
                  ),
                ),
                new SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    'Try: 5.00',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
