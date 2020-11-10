import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}
