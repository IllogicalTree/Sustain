import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
            Text('Login Page'),
            MaterialButton(
              child: Center(
                child: Text('Go to Products Page'),
              ),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/products'),
            )
          ],
        ),
      ),
    );
  }
}
