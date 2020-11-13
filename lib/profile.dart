import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    height: 58,
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      children: [
                        Image.asset('assets/logo.png'),
                        Spacer(),
                        Image.asset('assets/menu-icon.png')
                      ],
                    ),
                  ),
                  Text(
                    'SUMMARY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profile-picture.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'JORDAN NEWLANDS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '456',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '96',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'FOLLOWERS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        '254',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'FOLLOWING',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '6',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                  ),
                  Icon(Icons.nature, color: Colors.white, size: 40)
                ],
              ),
            ),
            SizedBox(height: 8),
            rowHeading('recent'),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(8),
              height: 120,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  listItem('cola', 0xFFDC596B),
                  listItem('coffee', 0xFF78C29E),
                  listItem('burrito', 0xFFBFE3A4),
                ],
              ),
            ),
            SizedBox(height: 8),
            rowHeading('yesterday'),
            SizedBox(height: 8),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  listItem('wine', 0xFFEE8591),
                  listItem('pizza', 0xFFFDD6A0),
                  listItem('boba', 0xFFCDA37F),
                ],
              ),
            ),
            SizedBox(height: 8),
            rowHeading('tuesday 10/11/20'),
            MaterialButton(
              child: Text('Go to products'),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/products'),
            ),
            MaterialButton(
              child: Text('Go to menu'),
              onPressed: () => Navigator.pushReplacementNamed(context, '/menu'),
            ),
            MaterialButton(
              child: Text('Go to history'),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/history'),
            ),
            MaterialButton(
              child: Text('Go to product'),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/product'),
            ),
          ],
        ),
      ),
    );
  }

  rowHeading(String title) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      color: Color(0xFFB6D96A),
      child: Row(
        children: [
          Text(
            title.toUpperCase(),
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_upward_rounded,
            size: 34,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  listItem(String asset, int color) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Image.asset('assets/' + asset + '.png'),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}
