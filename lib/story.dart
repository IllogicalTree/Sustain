import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFBEDB72), Color(0xFF3AE388)],
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 58,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "JANE'S STORY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 160,
              child: Row(
                children: [
                  Image.asset('assets/lost.png'),
                  SizedBox(width: 10),
                  Container(
                    width: 210,
                    child: Text(
                        'Like many people, Jane is lost when it comes to helping the planet. She sees the news about climate change, but she has no idea how she could do her part to help.\n\nJane is also one of the many people who think her change won’t make a difference.',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 160,
              child: Row(
                children: [
                  Container(
                    width: 210,
                    child: Text(
                        'However, once Jane found Sustain this changed. All of her confusion and bad feelings quickly dissapeared.\n\nThat’s because with Sustain, you don’t need to do research or know what’s good or bad. You simply need to use Sustain, and it does all the work for you!',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                  ),
                  SizedBox(width: 10),
                  Image.asset('assets/unlock.png'),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 160,
              child: Row(
                children: [
                  Image.asset('assets/phone-holding.png'),
                  SizedBox(width: 10),
                  Container(
                    width: 200,
                    child: Text(
                        'Use Sustain when you’re shopping and it will tell you everything you need to know about that product’s environmental impact.\n\nOh, and the best part is, Sustain will reward you for purchasing more environmental products.',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 160,
              child: Row(
                children: [
                  Container(
                    width: 210,
                    child: Text(
                        'Earn points by making better purchases and we will plant trees for you!\n\nCompete with your friends to see who is the most environmentally concious, and once you’re ready for the challenge see how you stand in the global leaderboards!',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                  ),
                  SizedBox(width: 10),
                  Image.asset('assets/perfect-hand.png'),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: MaterialButton(
                  onPressed: () => Navigator.pushNamed(context, '/register'),
                  child: Text('Get started!')),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
