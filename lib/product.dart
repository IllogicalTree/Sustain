import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Product> fetchProduct(String id) async {
  final response =
      await http.get('https://sustain.eu-gb.mybluemix.net/v1/product/$id');

  if (response.statusCode == 200) {
    return Product.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load product');
  }
}

class Product {
  final String id;
  final String name;
  final String description;
  final String packaging;
  final String color;
  final String image;
  final int score;

  Product({
    this.id,
    this.name,
    this.description,
    this.packaging,
    this.color,
    this.image,
    this.score,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      packaging: json['packaging'],
      color: json['color'],
      image: json['image'],
      score: json['rating_data']['score'],
    );
  }
}

class ProductScreen extends StatefulWidget {
  final String id;

  ProductScreen({Key key, @required this.id}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState(id);
}

class _ProductScreenState extends State<ProductScreen> {
  final String id;

  _ProductScreenState(this.id);

  Future<Product> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct(this.id);
  }

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
        child: FutureBuilder<Product>(
          future: futureProduct,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Container(
                    height: 50,
                    color: Color(int.parse(snapshot.data.color)),
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
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(int.parse(snapshot.data.color)),
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
                            snapshot.data.name.split(" ")[0].toUpperCase(),
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.2),
                                fontSize: 70,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.6, -1.3),
                          child: Text(
                            snapshot.data.name.split(" ")[0].toUpperCase(),
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
                                    image: NetworkImage(snapshot.data.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                snapshot.data.name.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                            '${snapshot.data.score}',
                                            style: TextStyle(
                                                color: Color(int.parse(
                                                    snapshot.data.color)),
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
                                            '${getGrade(snapshot.data.score)}',
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
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 60),
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
                                      '${snapshot.data.description}',
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
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 60),
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
                                      '${snapshot.data.packaging}',
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
                            child: Text('1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 48)),
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
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  String getGrade(int score) {
    return score >= 30
        ? 'A'
        : score >= 25
            ? 'B'
            : score >= 20
                ? 'C'
                : score >= 15
                    ? 'D'
                    : score >= 10
                        ? 'E'
                        : score >= 5
                            ? 'F'
                            : 'G';
  }
}
