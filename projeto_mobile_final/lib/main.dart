import 'package:flutter/material.dart';
import 'src/pages/LoginPage.dart';
import 'src/pages/SplashPage.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/Login':(context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
