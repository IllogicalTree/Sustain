import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFBEDB72), Color(0xFF3AE388)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Image.asset('assets/question-icon.png'),
                  Spacer(),
                  Image.asset('assets/close-icon.png')
                ],
              ),
            ),
            Text(
              'MENU',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Container(
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  menuItem('find a product', 'search-icon'),
                  menuItem('our project', 'about-icon', 'menu'),
                  menuItem('leaderboards', 'trophy-icon', 'menu'),
                  menuItem('news', 'news-icon', 'menu'),
                  menuItem('history', 'history-icon', 'menu'),
                  menuItem('settings', 'settings-icon', 'menu'),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 266,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/menu-image.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  menuItem(String title, String icon, [String route]) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
      child: Row(
        children: [
          Image.asset('assets/' + icon + '.png'),
          SizedBox(width: 10),
          Container(
            width: 140,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 3,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
