import 'package:Aussi_slang_game_dictionerry/home.dart';
import 'package:flutter/material.dart';
import 'level_2.dart';
import 'level_3.dart';

class Results2 extends StatefulWidget {
  final int correct, incorrect, total, highscore;
  Results2({@required this.correct, @required this.incorrect,@required this.total, @required this.highscore,});
  @override
  _Results2State createState() => _Results2State();
}

class _Results2State extends State<Results2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
            child:Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("${widget.correct}/ 20",style: TextStyle(fontSize: 30),),
                  SizedBox(height: 8,),
                  Text("YOUR SCORE",style: TextStyle(fontSize: 25),),
                  SizedBox(height: 8,),
                  Text("YOUR HIGH SCORE ${widget.highscore}" ,style: TextStyle(fontSize: 25),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(''),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: RaisedButton(
                          color: Colors.greenAccent,
                          onPressed: () {
                            if(widget.correct>15){

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Quizzler3()));

                            }else{

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Quizzler2()));

                            }
                          },
                          child: widget.correct>15? Text(
                              "Next Level"): Text(" Try again"),
//                            (color: widget.description== widget.optionSelected
//                            ? widget.optionSelected==widget.correctAnswer
//                            ? Colors.green.withOpacity(0.7)
//                                :Colors.red.withOpacity(0.7)
//                              : Colors.white,width: 1.4),
                        ),
                      ),
                      Text(''),
                    ],
                  ),
                  //Text("You Answered ${widget.correct} answers correctly and ${widget.incorrect} answers incorrectly"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(''),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: IconButton(
                          icon: Icon(Icons.home),
                          tooltip: "Home",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()));



                          },
                        ),
                      ),
                      Text(''),
                    ],
                  ),])
        ),

      ),
    );
  }
}