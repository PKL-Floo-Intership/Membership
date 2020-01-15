import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;
import 'package:membership/shared/text_style.dart' as textStyle;



class Profile extends StatefulWidget{

   static String toProfile = 'profile-page';
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {

  bool _isHidePassword = true;
  void _togglePasswordVisibility(){
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

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

    final firstName = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Your First Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final lastName = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Your Last Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
     obscureText: _isHidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        suffixIcon: GestureDetector(
        onTap:(){
          _togglePasswordVisibility();
        },
        child: Icon(
          _isHidePassword ? Icons.visibility_off : Icons.visibility,
          color: _isHidePassword ? Colors.blueGrey : Colors.blueGrey,
        ),
      ),
      )
    );

    final confirmPassword = TextFormField(
      obscureText: _isHidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        suffixIcon: GestureDetector(
        onTap:(){
          _togglePasswordVisibility();
        },
        child: Icon(
          _isHidePassword ? Icons.visibility_off : Icons.visibility,
          color: _isHidePassword ? Colors.blueGrey : Colors.blueGrey,
        ),
      ),
      )
    );

    final birthday = TextFormField(
      keyboardType: TextInputType.datetime,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'dd/mm/yy',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );


    final noHP = TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Your Telephone Number',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final address = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Your Address',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),
      ),
    );

    final saveButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          // Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: app_color.icon,
        child: Text('Save', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: app_color.backgroundApp,
      appBar: new AppBar(
        backgroundColor: app_color.bar,
        title: new Text("Profile Details", style: textStyle.textAppbar),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 30),
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(40),
               child : Image.asset('assets/wel.png'),
            ),
            
            username,
            SizedBox(height: 15.0),
            firstName,
            SizedBox(height: 15.0),
            lastName,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 15.0),
            confirmPassword,
            SizedBox(height: 15.0),
            birthday,
            SizedBox(height: 15.0),
            noHP,
            SizedBox(height: 15.0),
            address,
            SizedBox(height: 15.0),
            saveButton
          ],
        ),
      ),
    );
  }
}