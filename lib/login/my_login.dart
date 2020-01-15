import 'package:flutter/material.dart';
import 'package:membership/views/layout.dart';
import 'package:membership/views/login/login_page.dart';
import 'package:membership/views/promotion/promotion_view.dart';
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