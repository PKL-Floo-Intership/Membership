import 'package:flutter/material.dart';
import 'package:membership/views/login/login_page.dart';
import 'package:membership/views/login/my_login.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(
      seconds: 1
      ),() {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => MyLogin(),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Center(
           child : new Padding(
              padding: EdgeInsets.all(40),
               child : Image.asset('assets/wel.png'),
            ),
         ),
    );
  }
}