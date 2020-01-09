import 'package:flutter/material.dart';
import 'package:membership/login/login_page.dart';
import 'package:membership/tab_bar/promotion_view.dart';
import 'package:membership/register/register_page.dart';
import 'package:membership/main.dart';


class MyLogin extends StatelessWidget {
  
  
  
  
  final routes = <String, WidgetBuilder>{
    LoginPage.toLogin: (context) => LoginPage(),
    Promotion.toPromotion: (context) => MyApp(),
    RegisterPage.toRegister: (context) => RegisterPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Membership',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'NeoSans',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}