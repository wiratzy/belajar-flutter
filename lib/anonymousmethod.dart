import 'package:flutter/material.dart';

//latihan menggunakan anonymous Method
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  void tombolDitekan() {
    setState(() {
      message = "Tombol Sudah ditekan";
    });
  }

/*
Pada sesi ini mengajarkan anonymous method yang bentuknya seperti
() {

}

sama seperti setState juga menggunakan anonymous method jika diperhatikan
*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: prefer_const_constructors
              Text(message),
              ElevatedButton(
                  // ignore: prefer_const_constructors
                  onPressed: tombolDitekan,
                  // ignore: prefer_const_constructors
                  child: Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}
//latihan menggunakan anonymous Method