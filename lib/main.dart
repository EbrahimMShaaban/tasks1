import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

final TextStyle primarystyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

final TextStyle styleboldg = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 82, 103, 104),

);

final TextStyle styleboldb = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
