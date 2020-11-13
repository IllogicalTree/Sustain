import 'package:flutter/material.dart';
import 'package:sustain/history.dart';
import 'package:sustain/login.dart';
import 'package:sustain/menu.dart';
import 'package:sustain/product.dart';
import 'package:sustain/profile.dart';
import 'package:sustain/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sustain',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Register(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/profile': (context) => Profile(),
        '/menu': (context) => Menu(),
        '/history': (context) => History(),
        '/product': (context) => Product()
      },
    );
  }
}
