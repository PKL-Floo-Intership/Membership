import 'package:flutter/material.dart';
import 'package:membership/tab_bar/promotion_view.dart';
import 'package:membership/tab_bar/profile_view.dart';
import 'package:membership/login/my_login.dart';
import 'package:membership/tab_bar/reward_view.dart';
import 'package:membership/tab_bar/membership_view.dart';
import 'package:membership/shared/app_colors.dart' as app_color;

//Khosy
void main(){
  runApp(new MaterialApp(
    home: new MyLogin(),
    routes: <String, WidgetBuilder>{
      'Profile' : (BuildContext) => new Profile()
    },
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
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: app_color.backgroundApp,
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Promotion(),
            new Membership(),
            new Reward(),
            new Profile()
          ],
      ),
      bottomNavigationBar: new Material(
        color: app_color.bar,
        child: new TabBar(
        controller: controller,
        tabs: <Widget>[
          new Tab(icon: new Icon(Icons.assistant), text: "Promotion",),
          new Tab(icon: new Icon(Icons.assignment_ind),text: "Membership",),
          new Tab(icon: new Icon(Icons.account_balance_wallet),text: "Reward",),
          new Tab(icon: new Icon(Icons.account_box),text: "Profile",),
        ],
      ),
      ),
    );
  }
}

