import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;

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
    );
  }
}
