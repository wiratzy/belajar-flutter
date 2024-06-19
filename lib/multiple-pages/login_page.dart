import 'package:belajar_flutter/multiple-pages/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('login'),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return MainPage();
            }));
          },
        ),
      ),
    );
  }
}
