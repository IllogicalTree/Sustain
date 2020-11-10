import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sustain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Products(),
    );
  }
}

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 100),
          Container(
            height: 250,
            child: Container(
              width: 250,
              child: Image.asset('assets/tree-planting-icon.png'),
            ),
          ),
          SizedBox(height: 50),
          cardTitle('Popular Purchases'),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                card(
                  'FAIRTRADE APPLE',
                  'Ethically Sourced from Fairtrade Farmrs',
                  'A',
                  0xFFBB4E5E,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'ORGANIC KEFIR',
                  'Uses recycled packaging and made using Fairtrade milk',
                  'B',
                  0xFFBB8B53,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'RAISIN LOAF',
                  'Gluten Free and packaged in recyled plastic',
                  'B',
                  0xFF7A4C81,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'CHOCOLATE BITES',
                  'Uses cardboard package that is not recylable',
                  'E',
                  0xFFCD6954,
                  'assets/tree-planting-icon.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          cardTitle('Recently Purchased'),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                card(
                  'FAIRTRADE APPLE',
                  'Ethically Sourced from Fairtrade Farmrs',
                  'A',
                  0xFFBB4E5E,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'ORGANIC KEFIR',
                  'Uses recycled packaging and made using Fairtrade milk',
                  'B',
                  0xFFBB8B53,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'RAISIN LOAF',
                  'Gluten Free and packaged in recyled plastic',
                  'B',
                  0xFF7A4C81,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'CHOCOLATE BITES',
                  'Uses cardboard package that is not recylable',
                  'E',
                  0xFFCD6954,
                  'assets/tree-planting-icon.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          cardTitle('Articles'),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                card(
                  'FAIRTRADE APPLE',
                  'Ethically Sourced from Fairtrade Farmrs',
                  'A',
                  0xFFBB4E5E,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'ORGANIC KEFIR',
                  'Uses recycled packaging and made using Fairtrade milk',
                  'B',
                  0xFFBB8B53,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'RAISIN LOAF',
                  'Gluten Free and packaged in recyled plastic',
                  'B',
                  0xFF7A4C81,
                  'assets/tree-planting-icon.png',
                ),
                card(
                  'CHOCOLATE BITES',
                  'Uses cardboard package that is not recylable',
                  'E',
                  0xFFCD6954,
                  'assets/tree-planting-icon.png',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }

  cardTitle(String title) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  card(String title, String subheader, String grade, int color, String asset) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    subheader,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Row(
                    children: [
                      Text(
                        'Grade ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        grade,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 68,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(asset),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        width: 200,
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
