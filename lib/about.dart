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
                  Spacer(),
                  InkWell(
                    child: Image.asset('assets/menu-icon.png'),
                    onTap: () => Navigator.popAndPushNamed(context, '/menu'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Image.asset('assets/logo.png'),
            ),
            SizedBox(height: 30),
            Text(
              'OUR PROJECT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'This project commenced on the 9th of November 2020 and was developed for the IBM Call for Code Challenge, which required a team of 5 individuals to propose an idea that could provide a solution to the energy sustainability issues impacting the entire world.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'The team comprising of Davis Ansons, Jordan Newlands, Alexander Wedekind, Marcin Waskowiak, and Slawomir Szakalinis had only one week to do this, and this is the result!',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Spacer(),
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/recycle-bins.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
