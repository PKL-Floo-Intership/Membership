import 'package:flutter/material.dart';
import 'package:membership/login/login_page.dart';
import 'package:membership/shared/app_colors.dart' as app_color;

class RegisterPage extends StatefulWidget {
  static String toRegister = 'register-page';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'welcome',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/wel.png'),
      ),
    );
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

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final confirmPassword = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final firstName = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'First Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final lastName = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Last Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final registerButton = Padding(
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
        child: Text('Sign Up', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: app_color.bar,
        title: new Text("Register Account"),
      ),
      backgroundColor: app_color.backgroundApp,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 40.0),
            firstName,
            SizedBox(height: 8.0),
            lastName,
            SizedBox(height: 8.0),
            username,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
            confirmPassword,
            SizedBox(height: 8.0),
            
            registerButton,
          ],
        ),
      ),
    );
  }
}
