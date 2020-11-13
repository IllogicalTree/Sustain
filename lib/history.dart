import 'package:flutter/material.dart';
import 'package:sustain/product.dart';

class History extends StatelessWidget {
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
          children:  [
            Container(
              height: 58,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Image.asset('assets/logo.png'),
                  Spacer(),
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, '/menu'),
                      child: Image.asset('assets/menu-icon.png'))
                ],
              ),
            ),
            Container(
              height: 700,
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Text(
                        'ITEM HISTORY',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  rowHeading('recent'),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 120,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        listItem(
                          'cola',
                          0xFFDC596B,
                          context,
                          '5000112630633',
                        ),
                        listItem(
                          'coffee',
                          0xFF78C29E,
                          context,
                          '266890690',
                        ),
                        listItem(
                          'burrito',
                          0xFFBFE3A4,
                          context,
                          '257450902',
                        ),
                      ],
                    ),
                  ),
                  rowHeading('yesterday'),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 120,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        listItem(
                          'wine',
                          0xFFEE8591,
                          context,
                          '4304493261563',
                        ),
                        listItem(
                          'pizza',
                          0xFFFDD6A0,
                          context,
                          '910000224862',
                        ),
                        listItem(
                          'boba',
                          0xFFCDA37F,
                          context,
                          '1000000984742',
                        ),
                      ],
                    ),
                  ),
                  rowHeading('tuesday 10/11/2020'),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 120,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        listItem(
                          'tea',
                          0xFFDDB89A,
                          context,
                          '7017707266',
                        ),
                        listItem(
                          'chocolate',
                          0xFFDD5C6D,
                          context,
                          '622300735999',
                        ),
                        listItem(
                          'water',
                          0xFFC7CDD8,
                          context,
                          '8243040011',
                        ),
                      ],
                    ),
                  ),
                  rowHeading('monday 09/11/2020'),
                  SizedBox(
                    height: 5,
                  ),
                  rowHeading('sunday 08/11/2020'),
                ],
              ),
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

  listItem(String asset, int color, BuildContext context, String id) {
    return Container(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductScreen(id: id),
            )),
        child: Image.asset('assets/' + asset + '.png'),
      ),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}
