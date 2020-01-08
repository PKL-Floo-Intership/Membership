import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {

  static String tag = 'promotion-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[800],
        title: new Text("Promotion "),
      ),
    );
  }
}
