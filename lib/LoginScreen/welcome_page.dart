import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("WEL-COME....You Login SuccessFully");
    return Scaffold(
      appBar: AppBar(
        title: Text('WEL-COME SCREEN'),
      ),
      body: Body(
          // Text("Welcome to Login Screen"),
          ),
    );
  }
}

Body() {}
