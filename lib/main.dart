import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart'; // Import the HomePage
import 'register_page.dart'; // Import the RegisterPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/register': (context) => RegisterPage(), // Add RegisterPage route
      },
    );
  }
}
