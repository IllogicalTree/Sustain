import 'package:flutter/material.dart';
import 'package:sustain/history.dart';
import 'package:sustain/leaderboard.dart';
import 'package:sustain/login.dart';
import 'package:sustain/menu.dart';
import 'package:sustain/news.dart';
import 'package:sustain/product.dart';
import 'package:sustain/profile.dart';
import 'package:sustain/register.dart';
import 'package:sustain/about.dart';
import 'package:sustain/search.dart';
import 'package:sustain/settings.dart';
import 'package:sustain/story.dart';

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
        '/': (context) => Story(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/profile': (context) => Profile(),
        '/menu': (context) => Menu(),
        '/history': (context) => History(),
        /*
        '/product': (context) => Product(
              '5000112630633',
              'coke can',
              "Coca-Cola Classic is the world's favourite soft drink and has been enjoyed since 1886.",
              'METAL - WIDELY RECYCLED',
              0xFFDC596B,
              'https://sustain-cos-standard-qpn.s3.eu-gb.cloud-object-storage.appdomain.cloud/Cola%20Can.png',
              21,
            ),
            */
        '/about': (context) => About(),
        '/leaderboard': (context) => Leaderboard(),
        '/news': (context) => News(),
        '/search': (context) => Search(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
