import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;
import 'package:membership/shared/text_style.dart' as textStyle;

class Membership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.backgroundApp,
      appBar: new AppBar(
        backgroundColor: app_color.bar,
        title: new Text("Membership", style: textStyle.textAppbar),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: new Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Card(
                  color: app_color.icon,
                  child: new Column(
                    children: <Widget>[
                      new Column(
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(right: 170, bottom: 90, top: 20),
                            child: Text("Member Card", style: textStyle.textTitleW),
                          ),

                          new Padding(
                            padding: const EdgeInsets.only(right: 115, bottom: 10),
                            child: Text("1234 1234 1234 1234", style: textStyle.textCard),
                          ),

                          new Row(
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, bottom: 20),
                                child: Text("John Doe", style: textStyle.textCard),
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    left: 120.0, bottom: 20),
                                child: Text("Valid : 20/21", style: textStyle.textCardV),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ),

              Flexible(
                flex: 2,
                child: new Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Column(
                  children: <Widget>[new Image.asset('assets/barcode1.png')],
                ),
              ),
              ),
              
              Flexible(
                flex: 1,
                child: new Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Column(
                  children: <Widget>[
                    new Text("Point : 999 Member Point",
                        style: textStyle.textTitleB)
                  ],
                ),
              ),
              ),
              
            ]),
      ),
    );
  }
}
