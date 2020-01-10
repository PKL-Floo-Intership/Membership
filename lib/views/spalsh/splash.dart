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
    navPage();
  }

  movePage(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => MyLogin(),
      )
    );
  }

  navPage()async{
    var dur = new Duration( seconds: 2);
    return new Timer(dur, movePage);
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