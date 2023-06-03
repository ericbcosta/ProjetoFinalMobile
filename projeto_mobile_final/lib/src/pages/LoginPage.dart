import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SILLE',
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/img/DronePrag.jpeg',
              ),
              Image.asset(
                'assets/img/DronePrag.jpeg',
              ),
              Image.asset(
                'assets/img/DronePrag.jpeg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
