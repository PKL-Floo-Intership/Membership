import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;
import 'package:membership/views/login/login_page.dart';
import 'package:membership/shared/text_style.dart' as textStyle;

class ForgotPasswordPage extends StatefulWidget{
  static String toForgotPassword = 'forgot-page';
  @override
  _ForgotPasswordPageState createState() => new _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    
    
    final username = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final newPassword = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'New Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final oldPassword = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final confirmPassword = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.toLogin);
        },
        padding: EdgeInsets.all(12),
        color: app_color.icon,
        child: Text('Change Password', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: app_color.backgroundApp,
      appBar: new AppBar(
        backgroundColor: app_color.bar,
        title: new Text("Forgot Password", style: textStyle.textAppbar),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(40),
               child : Image.asset('assets/wel.png'),
            ),
            username,
            SizedBox(height: 8.0),
            newPassword,
            SizedBox(height: 8.0),
            oldPassword,
            SizedBox(height: 24.0),
            confirmPassword
          ],
        ),
      ),
    );
  }
}