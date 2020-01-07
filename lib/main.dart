import 'package:flutter/material.dart';
import 'package:membership/tab_bar/hal_home.dart';
import 'package:membership/tab_bar/hal_poin.dart';
import 'package:membership/tab_bar/hal_transaksi.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[800],
        title: new Text("Aplikasi Membership"),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: new EdgeInsets.all(10.0),),
          new Icon(Icons.account_circle),
          new Padding(padding: new EdgeInsets.all(10.0),),
        ],
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Home(),
            new Transaksi(),
            new Point()
          ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.grey[800],
        child: new TabBar(
        controller: controller,
        tabs: <Widget>[
          new Tab(icon: new Icon(Icons.home), text: "Beranda",),
          new Tab(icon: new Icon(Icons.book),text: "Transaksi",),
          new Tab(icon: new Icon(Icons.attach_money),text: "Poin",),
        ],
      ),
      ),
    );
  }
}

