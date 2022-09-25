import 'package:Aussi_slang_game_dictionerry/views/dictionary.dart';
import 'package:Aussi_slang_game_dictionerry/views/level_1.dart';
import 'package:Aussi_slang_game_dictionerry/views/level_2.dart';
import 'package:Aussi_slang_game_dictionerry/views/level_3.dart';
import 'package:Aussi_slang_game_dictionerry/views/level_4.dart';
import 'package:Aussi_slang_game_dictionerry/views/level_5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testDevices ="Mobile_id";
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

int _coins = 0;
RewardedVideoAd videoAd = RewardedVideoAd.instance;
int _highScore =0;



class _HomeState extends State<Home> {

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevices != null ? <String>['testDevices'] : null,
    keywords: <String>['Book', 'Game'],
    nonPersonalizedAds: true,
  );

  @override
  void initState() {
    RewardedVideoAd.instance.load(adUnitId: "ca-app-pub-9906861794105751/5877280816 ",targetingInfo: targetingInfo);
    super.initState();
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-9906861794105751~9870520234");
    videoAd.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      print("REWARDED VIDEO AD $event");
      if (event == RewardedVideoAdEvent.rewarded) {
        setState(() {
          _highScore= _highScore+rewardAmount;
        });
      }
    };
   checkFirstSeen();
  }


  checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _highScore = (prefs.getInt('highScore') ?? 0);
    });
  }


  alertOne(a){
    Alert(
      style: AlertStyle(
        animationType: AnimationType.fromTop,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(milliseconds: 400),

        titleStyle: TextStyle(
          color: Colors.yellow[900],
        ),
      ),
      context: context,
      title: "Locked",
      content:Column(children: <Widget>[ Text(""),DialogButton(
        child: Text(
          "COOL",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.grey[900],
        radius: BorderRadius.circular(10.0),
      ),Icon(Icons.lock),],),
      desc: 'You\'ve to complete Level $a',
      buttons: [

        DialogButton(
          child: Text(
            "Or watch ad",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
    onPressed: (){Navigator.pop(context);videoAd.show();},
          color: Colors.grey[900],
          radius: BorderRadius.circular(10.0),
        ),

      ],
    ).show();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/LordHome.jpg"),
        fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              //Text('Slang Game',style: TextStyle(fontSize: 20,color: Colors.yellow),),
              Expanded(
                flex: 2,
                child: Container(
                  child: SizedBox.expand(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: (RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dictionary()),
                            );
                          },
                          color: Colors.blueGrey[900],
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          splashColor: Colors.grey,
                          child: const Text('Idioms & Phrases- Dictionary',
                              style: TextStyle(fontSize: 20)),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
                child: new Center(
                  child: new Container(
                    margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
//                      decoration: BoxDecoration(
//                        image: DecorationImage(
//                          image: AssetImage("assets/enlargement3.png"),
//                          fit: BoxFit.cover,
//                        ),
//                      ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Quizzler()));
                                //alertNotify();
//                                showDialog(
//                                  context: context,
//                                  builder: (BuildContext context) {
//                                    Future.delayed(Duration(seconds: 5), () {
//                                      Navigator.of(context).pop(true);
//                                    });
//                                    // return object of type Dialog
//                                    return AlertDialog(
//                                      //title: new Text("G'day mate, ",textAlign: TextAlign.center,),
//                                      content: new Text("swipe left to go to the next question",style: TextStyle(fontSize: 20)),
//                                      actions: <Widget>[
//                                        // usually buttons at the bottom of the dialog
//                                        new FlatButton(
//                                          child: new Text("Close"),
//                                          onPressed: () {
//                                            Navigator.of(context).pop();
//                                          },
//                                        ),
//                                      ],
//                                    );
//                                  },
//                                );

                              },
                              color: Colors.blueGrey[900],
                              textColor: Colors.green,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              splashColor: Colors.grey,
                              child: const Text('Level 1',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {
                                if(_highScore<15){
                                  alertOne(1);
                                }else{
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Quizzler2()));
                                }

                              },
                              color: Colors.blueGrey[900],
                              textColor: _highScore<15? Colors.red
                                  : Colors.green,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              splashColor: Colors.grey,
                              child: const Text('Level 2',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {
                                if(_highScore<15){
                                  alertOne(1);
                                }else if(_highScore<35){
                                  alertOne(2);
                                }
                                else{
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Quizzler3()));
                                }
                              },
                              color: Colors.blueGrey[900],
                              textColor: _highScore<35? Colors.red
                                  : Colors.green,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              splashColor: Colors.grey,
                              child: const Text('Level 3',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {
                                if(_highScore<15){
                                  alertOne(1);}
                                else if(_highScore<35){
                                  alertOne(2);}
                                else if(_highScore<55){
                                  alertOne(3);}
                                else{
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Quizzler4()));
                                }
                              },
                              color: Colors.blueGrey[900],
                              textColor: _highScore<55? Colors.red
                                  : Colors.green,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              splashColor: Colors.grey,
                              child: const Text('Level 4',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {
                                if(_highScore<15){
                                  alertOne(1);
                                }
                                else if(_highScore<35){
                                  alertOne(2);}
                                else if(_highScore<55){
                                  alertOne(3);}
                                else if(_highScore<75){
                                  alertOne(4);}
                                else{
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Quizzler5()));
                                }
                              },
                              color: Colors.blueGrey[900],
                              textColor: _highScore<75? Colors.red
                                  : Colors.green,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              splashColor: Colors.grey,
                              child: const Text('Level 5',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Expanded(
                    flex: 2,
                    child: Container(
//                      decoration: BoxDecoration(
//                        image: DecorationImage(
//                          image: AssetImage("assets/enlargement3.png"),
//                          fit: BoxFit.cover,
//                        ),
//                      ),
                    ),
                  ),
                  ],
                ),
              ),
//              Expanded(
//                flex: 2,
//                child: Container(
//                  child: SizedBox.expand(
//                    child: (RaisedButton(
//                      onPressed: () {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => Dictionary()),
//                        );
//                      },
//                      color: Colors.blueGrey[900],
//                      textColor: Colors.white,
//                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                      splashColor: Colors.grey,
//                      child: const Text('Aussie Slang Dictionary',
//                          style: TextStyle(fontSize: 30)),
//                    )),
//                  ),
//                ),
//              )
            ],
          ),
        ),
      ),
    );
  }

}

