import 'package:flutter/material.dart';
import 'package:membership/views/forgot_password/forgot_page.dart';
import 'package:membership/views/login/login_page.dart';
import 'package:membership/views/promotion/promotion_view.dart';
import 'package:membership/views/register/register_page.dart';
import 'package:membership/views/layout.dart';
// import 'package:membership/shared/app_colors.dart' as app_color;


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