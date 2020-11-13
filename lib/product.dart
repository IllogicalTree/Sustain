import 'package:flutter/material.dart';

class Product extends StatelessWidget {
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
              height: 50,
              color: Color(0xFFDC596B),
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset('assets/close-icon.png')),
                ],
              ),
            ),
            Container(
              //color: Colors.red,
              height: 400,
              decoration: BoxDecoration(
                color: Color(0xFFDC596B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-1.7, -.3),
                    child: Text(
                      'COKE',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.6, -1.3),
                    child: Text(
                      'COKE',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cola.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'COKE CAN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '21',
                                      style: TextStyle(
                                          color: Color(0xFFDC596B),
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'SCORE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'C',
                                      style: TextStyle(
                                          color: Color(0xFFDC596B),
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'RATING',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/heart-icon.png'),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'FAVOURITES',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  child: Row(
                    children: [
                      Image.asset('assets/about-icon.png'),
                      SizedBox(width: 20),
                      Container(
                        width: 200,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Cola is the world's favourite soft drink and has been enjoyed since 1886.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Row(
                    children: [
                      Image.asset('assets/recycle-icon.png'),
                      SizedBox(width: 20),
                      Container(
                        width: 200,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "METAL - WIDELY RECYCLED",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '+',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 38,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('6',
                          style: TextStyle(color: Colors.white, fontSize: 48)),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '-',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 38,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Text(
                    'ADD',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
