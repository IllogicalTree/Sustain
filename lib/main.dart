import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sustain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Products(),
    );
  }
}

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
            height: 250,
            child: Container(
              width: 250,
              color: Colors.red,
              child: Image.asset('assets/tree-planting-icon.png'),
            ),
          ),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Popular Products', style: TextStyle(fontSize: 20)),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 160, color: Colors.red),
                Container(width: 160, color: Colors.blue),
                Container(width: 160, color: Colors.green),
                Container(width: 160, color: Colors.yellow),
              ],
            ),
          ),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Recently Purchased', style: TextStyle(fontSize: 20)),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 160, color: Colors.red),
                Container(width: 160, color: Colors.blue),
                Container(width: 160, color: Colors.green),
                Container(width: 160, color: Colors.yellow),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
