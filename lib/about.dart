import 'package:flutter/material.dart';

class About extends StatelessWidget {
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
          children: [
            Container(
              height: 58,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Image.asset('assets/logo.png'),
                  Spacer(),
                  Text(
                    'About sustain',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Image.asset('assets/menu-icon.png'),
                    onTap: () => Navigator.popAndPushNamed(context, '/menu'),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              'Sustain is ...',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
