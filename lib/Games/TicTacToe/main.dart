import 'package:flutter/material.dart';
import 'HomePage.dart';

class TicTac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEAF0F1),
      ),
      home: HomePage(),
    );
  }
}
