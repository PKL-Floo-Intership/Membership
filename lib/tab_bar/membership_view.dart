import 'package:flutter/material.dart';

class Membership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[800],
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
