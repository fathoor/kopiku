import 'package:flutter/material.dart';
import 'package:kopiku/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KopiKu',
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: const HomeScreen(),
    );
  }
}
