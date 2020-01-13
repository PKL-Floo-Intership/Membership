import 'package:flutter/material.dart';
import 'package:membership/shared/app_colors.dart' as app_color;
import 'package:membership/shared/text_style.dart' as textStyle;




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
          padding: new EdgeInsets.all(10.0),
          child: new Card(
            child: new Column(
              children: <Widget>[

                new Hero(
                  tag: rewardnya['nama'],
                  child: new Material(
                    child: new InkWell(
                      onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Detail(nama: rewardnya['nama'],gambar: gambar,),
                      )),
                      child: new Image.asset("assets/$gambar", fit: BoxFit.cover,),
                    ),
                  ),
                ),

                
                new Padding(padding: new EdgeInsets.all(10.0),),
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
      title: new Text("Reward" ,style: textStyle.textAppbar),
      ),

      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarReward,
      ),
    );
  }
}

//click picture
class Detail extends StatelessWidget{
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child:
            new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("assets/$gambar"),
                  ),
              )
            )
          )
        ],
      ),
    );
  }
}

