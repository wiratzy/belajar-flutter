import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Belajar Image wigdet',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Align(
          alignment: Alignment(0, 0),
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage("images/logo.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
