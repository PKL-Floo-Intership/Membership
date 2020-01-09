import 'package:flutter/material.dart';
import 'package:membership/forgot_password/forgot_page.dart';
import 'package:membership/login/login_page.dart';
import 'package:membership/tab_bar/promotion_view.dart';
import 'package:membership/register/register_page.dart';
import 'package:membership/main.dart';
import 'package:membership/shared/app_colors.dart' as app_color;


class MyLogin extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.toLogin: (context) => LoginPage(),
    Promotion.toPromotion: (context) => MyApp(),
    RegisterPage.toRegister: (context) => RegisterPage(),
    ForgotPasswordPage.toForgotPassword: (context) => ForgotPasswordPage(),
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