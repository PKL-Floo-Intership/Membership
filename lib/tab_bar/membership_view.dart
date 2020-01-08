import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;

class Membership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.backgroundApp,
      appBar: new AppBar(
        backgroundColor: app_color.bar,
        title: new Text("Membership"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              new Card(
                child: new Column(
                  children: <Widget>[
                    new Text("Member Card"),
                    new Text("1234 1234 1234 1234"),
                    new Text("John Doe"),
                  ],
                ),
              ),
                new Column(
                  children: <Widget>[
                    new Image.asset('assets/barcode1.png')
                  ],
                ),
            
                new Column(
                  children: <Widget>[
                    new Text("Point : 999 Member Point"),
                  ],
                ),
              
          ]
        ),
      ),
    );
  }
}
