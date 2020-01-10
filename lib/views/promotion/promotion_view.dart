import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;
import 'package:membership/shared/text_style.dart' as textStyle;

class Promotion extends StatelessWidget {

  static String toPromotion = 'promotion-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: app_color.backgroundApp,
      appBar: new AppBar(
        backgroundColor: app_color.bar,
        title: new Text("Promotion"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListPromotion(
            photo: "assets/logo.png",
            promotionTitle: "Promotion Title",
            decs: "Test test test test test \nTest test test test test \nTest test test test test",
            expire: "Expire : 22 Juli 2019",
            ),
            new ListPromotion(
            photo: "assets/logo.png",
            promotionTitle: "Promotion Title",
            decs: "Test test test test test \nTest test test test test \nTest test test test test",
            expire: "Expire : 22 Juli 2019",
            ),
            new ListPromotion(
            photo: "assets/logo.png",
            promotionTitle: "Promotion Title",
            decs: "Test test test test test \nTest test test test test \nTest test test test test ",
            expire: "Expire : 22 Juli 2019",
            ),
        ],
      ),
    );
  }
}

class ListPromotion extends StatelessWidget {

  ListPromotion({this.photo, this.promotionTitle, this. decs, this.expire});

  final String photo;
  final String promotionTitle;
  final String decs;
  final String expire;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(20),
      child: new Center(
        child: Row(
          children: <Widget>[
            new Image.asset(photo, width: 120,),
            
            new Container(
              padding: EdgeInsets.all(20),
              child: new Center(
                child: new Column(
                    children: <Widget>[
                      new Text(promotionTitle,style: textStyle.textListT),
                      new Text(decs, style: textStyle.textListD),
                      new Text(expire, style: textStyle.textListx),
                    ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
