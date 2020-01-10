import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;



class Reward extends StatefulWidget {
  @override
  _RewardState createState() => new _RewardState();
}

class _RewardState extends State<Reward>{

  List<Container> daftarReward = new List();

  var reward=[
    {"nama": "reward 1", "gambar": "barcode1.png"},
    {"nama": "reward 2", "gambar": "barcode1.png"},
    {"nama": "reward 3", "gambar": "barcode1.png"},
    {"nama": "reward 4", "gambar": "barcode1.png"},
  ]; 

  _buatlist()async{
    for (var i=0; i<reward.length; i++){
      final rewardnya = reward[i];

      final String gambar = rewardnya["gambar"];

      daftarReward.add(
        new Container(
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Image.asset("assets/$gambar", fit: BoxFit.cover),
                new Text(rewardnya['nama'], style: new TextStyle(fontSize: 20.0),)
              ],
            )
          )
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