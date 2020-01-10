import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;


class Reward extends StatefulWidget {
  @override
  _RewardState createState() => new _RewardState();
}

class _RewardState extends State<Reward>{

  List<Container> daftarReward = new List();

  var reward=[
    {"nama": "reward 1", "gambar": "rew1.png"},
    {"nama": "reward 2", "gambar": "rew2.png"},
    {"nama": "reward 3", "gambar": "rew3.png"},
    {"nama": "reward 4", "gambar": "rew4.png"},
  ];

  _buatlist()async{
    for (var i=0; i<reward.length; i++){
      final rewardnya = reward[i];
      daftarReward.add(
        new Container(
          child: new Text(rewardnya["nama"]),
        )
      );
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.backgroundApp,
      appBar: new AppBar(
      backgroundColor: app_color.bar,
      title: new Text("Reward"),
      ),

      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarReward,
      ),
    );
  }
}