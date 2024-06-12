import 'package:flutter/material.dart';

///latihan Row Dan Column
class RowCol extends StatelessWidget {
  const RowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Row dan Column"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              children: [Text("Text 4"), Text("Text 5"), Text("Text 6")],
            )
          ],
        ),
      ),
    );
  }
}

///latihan Row Dan Column