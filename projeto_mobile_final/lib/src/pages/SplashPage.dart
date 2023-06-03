import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Center(child: Image.asset('assets/img/Splash_1.png')),
          Center(child: Image.asset('assets/img/Splash_2.png')),
        ],
      ),
    );
  }
}