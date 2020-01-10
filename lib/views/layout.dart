import 'package:flutter/material.dart';
import 'package:membership/views/reward/reward_view.dart';
import 'package:membership/views/membership/membership_view.dart';
import 'package:membership/views/promotion/promotion_view.dart';
import 'package:membership/views/profile/profile_view.dart';


import 'package:membership/shared/app_colors.dart' as app_color;
import 'package:membership/shared/text_style.dart' as textStyle;
class MyApp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyApp> with SingleTickerProviderStateMixin {

  int _currentIndex = 0;
  final List<Widget> _children = <Widget>[
    new Promotion(),
    new Membership(),
    new Reward(),
    new Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: app_color.backgroundApp,

      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.assistant, color: app_color.icon),
            title: Text('Promotion', style: textStyle.textBott),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind, color: app_color.icon),
            title: Text('Membership', style: textStyle.textBott),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet, color: app_color.icon), 
              title: Text('Reward', style: textStyle.textBott)
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_box , color: app_color.icon), 
              title: Text('Profile', style: textStyle.textBott)
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}