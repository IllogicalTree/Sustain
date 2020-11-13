import 'package:flutter/material.dart';
import 'package:sustain/history.dart';
import 'package:sustain/leaderboard.dart';
import 'package:sustain/login.dart';
import 'package:sustain/menu.dart';
import 'package:sustain/news.dart';
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
        '/about': (context) => About(),
        '/leaderboard': (context) => Leaderboard(),
        '/news': (context) => News(),
        '/search': (context) => Search(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
