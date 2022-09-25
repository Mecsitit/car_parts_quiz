import 'dart:async';

import 'package:Aussi_slang_game_dictionerry/home.dart';
import 'package:Aussi_slang_game_dictionerry/widgets/option_tile.dart';
import 'package:flutter/material.dart';
//TODO: Step 2 - Import the rFlutter_Alert package here.
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:firebase_admob/firebase_admob.dart';

import 'level_3.dart';
import 'quiz_brain2.dart';
import 'results_2.dart';

QuizBrain2 quizBrain = QuizBrain2();

class Quizzler2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [
    ContainerLoad2(1),
    ContainerLoad(2),
    ContainerLoad(3),
    ContainerLoad(4),
    ContainerLoad(5),
    ContainerLoad(6),
    ContainerLoad(7),
    ContainerLoad(8),
    ContainerLoad(9),
    ContainerLoad(10),
    ContainerLoad(11),
    ContainerLoad(12),
    ContainerLoad(13),
    ContainerLoad(14),
    ContainerLoad(15),
    ContainerLoad(16),
    ContainerLoad(17),
    ContainerLoad(18),
    ContainerLoad(19),
    ContainerLoad(20),
  ];
  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-9906861794105751~9870520234");
    myBanner = buildBannerAd()..load();
    myInterstitial = buildInterstitialAd()..load();
    super.initState();
    checkFirstSeen();
    quizBrain.reset();
    _questionNumberActual = 1;
  }

  @override
  void dispose() {
    myBanner.dispose();
    myInterstitial.dispose();
    super.dispose();
  }

  checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _highScore = (prefs.getInt('highScore') ?? 0);
    });
  }

  NextClickQuestion() {
    PreviousQuestion();
    review.add(ContainerReview(_questionNumberprevious,previousQ, previousA, previousB, previousC, previousD, previousCorrect, previousAnswered,previouswrong)
    );

    if (_questionNumberActual == 20) {
      showInterstitialAd();
//      Navigator.pushReplacement(
//          context,
//          MaterialPageRoute(
//              builder: (context) => Results(
//                correct: _correct,
//                incorrect: _incorrect,
//                total: _questionNumberActual,
//                highscore: _highScore,
//                torevew: review,
//              )));
      setState(() {
        resultsTile=true;
        _questionNumberActual = 1;
      });
      check();

//                      Alert(
//                        context: context,
//                        title: 'Finished!',
//                        desc: 'You\'ve reached the end of the quiz.',
//                      ).show();
    } else {
      setState(() {
        quizBrain.nextQuestion();
        _questionNumberActual++;
      });
    }
    answered = false;
    wrong = false;
    optionSelected = '';
    scoreKeeper.replaceRange(_questionNumberActual - 1, _questionNumberActual,
        [ContainerLoad2(_questionNumberActual)]);

    _scrollController.animateTo(
        10000,
        curve: Curves.ease,
        duration: const Duration(seconds: 5));





    //The user picked true.
  }
  PreviousQuestion() {
    setState(() {
      _questionNumberprevious=_questionNumberActual;
      previousQ=quizBrain.getQuestionText();
      previousA=quizBrain.getMcqList(0);
      previousB=quizBrain.getMcqList(1);
      previousC=quizBrain.getMcqList(2);
      previousD=quizBrain.getMcqList(3);
      previousCorrect=quizBrain.getMcqAnswer();
      previousAnswered=optionSelected;
      previouswrong=wrong;

    });

    //The user picked true.
  }

  //Incrementing counter after click
  check() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_correct >= _highScore - 35) {
      setState(() {
        _highScore = _correct;
      });
      prefs.setInt('highScore', _correct + 40);
    }
  }

  void checkMcqAnswer(String userPickedAnswer) {
    String correctMcqAnswer = quizBrain.getMcqAnswer();

    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,

        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:
//        Alert(
//          context: context,
//          title: 'Finished!',
//          desc: 'You\'ve reached the end of the quiz.',
//        ).show();

        //TODO Step 4 Part C - reset the questionNumber,
//        quizBrain.reset();

        //TODO Step 4 Part D - empty out the scoreKeeper.
        scoreKeeper = [
          ContainerLoad2(1),
          ContainerLoad(2),
          ContainerLoad(3),
          ContainerLoad(4),
          ContainerLoad(5),
          ContainerLoad(6),
          ContainerLoad(7),
          ContainerLoad(8),
          ContainerLoad(9),
          ContainerLoad(10),
          ContainerLoad(11),
          ContainerLoad(12),
          ContainerLoad(13),
          ContainerLoad(14),
          ContainerLoad(15),
          ContainerLoad(16),
          ContainerLoad(17),
          ContainerLoad(18),
          ContainerLoad(19),
          ContainerLoad(20),
        ];
      }

      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        if (userPickedAnswer == correctMcqAnswer) {
//          scoreKeeper.add(Icon(
//            Icons.check,
//            color: Colors.green,
//            size: 20,
//          ));
          scoreKeeper
              .replaceRange(_questionNumberActual - 1, _questionNumberActual, [
            Icon(
              Icons.check,
              color: Colors.green,
              size: 20,
            )
          ]);
        } else {
//          scoreKeeper.add(Icon(
//            Icons.close,
//            color: Colors.red,
//            size: 20,
//          ));
          scoreKeeper
              .replaceRange(_questionNumberActual - 1, _questionNumberActual, [
            Icon(
              Icons.close,
              color: Colors.red,
              size: 20,
            )
          ]);
        }
        //quizBrain.nextQuestion();
      }
    });
  }


  InterstitialAd buildInterstitialAd() {
    return InterstitialAd(
      adUnitId: "ca-app-pub-9906861794105751/5548131845",
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.failedToLoad) {
          myInterstitial..load();
        } else if (event == MobileAdEvent.closed) {
          myInterstitial = buildInterstitialAd()..load();
        }
        print(event);
      },
    );
  }

  void showInterstitialAd() {
    myInterstitial..show();
  }

  BannerAd buildBannerAd() {
    return BannerAd(
        adUnitId: "ca-app-pub-9906861794105751/8365866870",
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.loaded) {
            myBanner..show();
          }
        });
  }

  String optionSelected = '';
  BannerAd myBanner;
  bool answered = false;
  bool wrong = false;
  int _correct = 0;
  int _incorrect = 0;
  int _questionNumberActual = 1;
  int _highScore = 0;
  InterstitialAd myInterstitial;

  int _questionNumberprevious = 0;
  String previousQ="";
  String previousA="";
  String previousB="";
  String previousC="";
  String previousD="";
  String previousCorrect="";
  String previousAnswered="";
  bool previouswrong=false;
  bool resultsTile=false;
  List<Widget> review=[];

  ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: scoreKeeper,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: ListView(
              controller: _scrollController,
              shrinkWrap: true,
              physics: ScrollPhysics(),


              children: [

                Container(
                    color: Colors.black87,child: Column(children: review,)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,50,0,50),
                  child: Visibility(
                    visible: resultsTile==false,
                    child: Container(
                      child: Column(
                        children: <Widget>[

                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              child: Center(
                                child: Text(
                                  "${_questionNumberActual}.${quizBrain.getQuestionText()}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Center(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Timer(Duration(seconds: 2), () {
                                            NextClickQuestion();
                                          });


                                          if (answered == false) {
                                            if (quizBrain.getMcqList(0) ==
                                                quizBrain.getMcqAnswer()) {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(0);
                                                answered = true;
                                                wrong = false;
                                                _correct = _correct + 1;
                                                checkMcqAnswer(quizBrain.getMcqList(0));
                                              });
                                            } else {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(0);
                                                answered = true;
                                                _incorrect = _incorrect + 1;
                                                wrong = true;
                                                checkMcqAnswer(quizBrain.getMcqList(0));
                                              });
                                            }
                                          }
                                        },
                                        child: OptionTile(
                                            correctAnswer: quizBrain.getMcqAnswer(),
                                            description: "${quizBrain.getMcqList(0)}",
                                            option: 'A',
                                            optionSelected: optionSelected),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Timer(Duration(seconds: 2), () {
                                            NextClickQuestion();
                                          });
                                          if (answered == false) {
                                            if (quizBrain.getMcqList(1) ==
                                                quizBrain.getMcqAnswer()) {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(1);
                                                answered = true;
                                                wrong = false;
                                                _correct = _correct + 1;
                                                checkMcqAnswer(quizBrain.getMcqList(1));
                                              });
                                            } else {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(1);
                                                answered = true;
                                                _incorrect = _incorrect + 1;
                                                wrong = true;
                                                checkMcqAnswer(quizBrain.getMcqList(1));
                                              });
                                            }
                                          }
                                        },
                                        child: OptionTile(
                                            correctAnswer: quizBrain.getMcqAnswer(),
                                            description: "${quizBrain.getMcqList(1)}",
                                            option: 'B',
                                            optionSelected: optionSelected),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Timer(Duration(seconds: 2), () {
                                            NextClickQuestion();
                                          });
                                          if (answered == false) {
                                            if (quizBrain.getMcqList(2) ==
                                                quizBrain.getMcqAnswer()) {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(2);
                                                answered = true;
                                                wrong = false;
                                                _correct = _correct + 1;
                                                checkMcqAnswer(quizBrain.getMcqList(2));
                                              });
                                            } else {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(2);
                                                answered = true;
                                                _incorrect = _incorrect + 1;
                                                wrong = true;
                                                checkMcqAnswer(quizBrain.getMcqList(2));
                                              });
                                            }
                                          }
                                        },
                                        child: OptionTile(
                                            correctAnswer: quizBrain.getMcqAnswer(),
                                            description: "${quizBrain.getMcqList(2)}",
                                            option: 'C',
                                            optionSelected: optionSelected),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Timer(Duration(seconds: 2), () {
                                            NextClickQuestion();
                                          });
                                          if (answered == false) {
                                            if (quizBrain.getMcqList(3) ==
                                                quizBrain.getMcqAnswer()) {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(3);
                                                answered = true;
                                                _correct = _correct + 1;
                                                wrong = false;
                                                checkMcqAnswer(quizBrain.getMcqList(3));
                                              });
                                            } else {
                                              setState(() {
                                                optionSelected =
                                                    quizBrain.getMcqList(3);
                                                answered = true;
                                                _incorrect = _incorrect + 1;
                                                wrong = true;
                                                checkMcqAnswer(quizBrain.getMcqList(3));
                                              });
                                            }
                                          }
                                        },
                                        child: OptionTile(
                                            correctAnswer: quizBrain.getMcqAnswer(),
                                            description: "${quizBrain.getMcqList(3)}",
                                            option: 'D',
                                            optionSelected: optionSelected),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Visibility(
                              visible: wrong,
                              child: Container(
                                alignment: Alignment.center,
                                child: RichText(
                                  text: TextSpan(
                                    text: '\'Correct answer is,',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "${quizBrain.getMcqAnswer()}'",
                                          style: TextStyle(
                                              color: Color(0xFF1687A7), fontSize: 18)),
                                    ],
                                  ),
                                ),

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
//                Container(
//                  height: 500,
//                )
              ],
            ),
          ),
        ),
        Visibility(
            visible: resultsTile,
            child: Container(


              child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 8,),
                    Text("YOUR SCORE  ${_correct}",style: TextStyle(fontSize: 25, color: Colors.red),),
                    SizedBox(height: 8,),
                    // Text("YOUR HIGH SCORE ${_highScore}" ,style: TextStyle(fontSize: 25, color: Colors.red),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(''),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: RaisedButton(
                            color: Colors.greenAccent,
                            onPressed: () {
                              if(_correct>15){

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Quizzler3()));

                              }else{

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Quizzler2()));

                              }
                            },
                            child: _correct>15? Text(
                              "Next Level",): Text(" Try again"),
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
                  ]),
            )),
        Container(
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(15.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(children: <Widget>[
//                      Container(
//                        alignment: Alignment.center,
//                        child: RichText(
//                          overflow: TextOverflow.ellipsis,
//                          text: TextSpan(
//                            text: 'Section-',
//                            style: TextStyle(
//                              color: Colors.white70,
//                              fontSize: 15,
//                            ),
//                            /*defining default style is optional */
//                            children: <TextSpan>[
//                              TextSpan(
//                                  text: "${quizBrain.getMcqSection()}",
//                                  style: TextStyle(
//                                      color: Colors.white70, fontSize: 15)),
//                            ],
//                          ),
//                        ),
////                      'Correct answer is, "${quizBrain.getMcqAnswer()}"',
////                  style: TextStyle(fontSize: 18, color: Colors.red),
//                        //),
//                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            flex: 50,
                            child: Container(child: Center(child: Text("Level -2",style: TextStyle(color: Color(0xFF1687A7),fontWeight: FontWeight.bold),)))),
                        IconButton(
                          icon: Icon(Icons.home,color: Color(0xFF1687A7),),
                          tooltip: "Home",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                            quizBrain.reset();
                            _questionNumberActual = 1;
                          },
                        ),
                        Expanded(
                            flex:50,child: Container(child: Center(child: Text('Score - $_correct',style: TextStyle(color: Color(0xFF1687A7),fontWeight: FontWeight.bold),)))),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }

  static ContainerLoad(int s) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(
              color
              // : Colors.white,width: 1.4
                  : Colors.transparent),
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      child: Text(
        "$s",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  static ContainerLoad2(int i) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF1687A7), width: 1.4),
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      child: Text(
        "$i",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
  static ContainerReview( int i,String Q,String A,String B,String C,String D, String correct, String selectedOption,bool wrong1) {
    return Container(

      //color: Color(0xFFbfbfbf),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,10,0,10),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    child: Center(
                      child: Text(
                        "${i}.${Q}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: <Widget>[
                            OptionTile(
                                correctAnswer: correct,
                                description: A,
                                option: 'A',
                                optionSelected: selectedOption),
                            OptionTile(
                                correctAnswer: correct,
                                description: B,
                                option: 'B',
                                optionSelected: selectedOption),
                            OptionTile(
                                correctAnswer: correct,
                                description: C,
                                option: 'C',
                                optionSelected: selectedOption),
                            OptionTile(
                                correctAnswer: correct,
                                description: D,
                                option: 'D',
                                optionSelected: selectedOption),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Visibility(
                    visible: wrong1,
                    child: Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: '\'Correct answer is,',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 18,
                          ),
                          /*defining default style is optional */
                          children: <TextSpan>[
                            TextSpan(
                                text: correct,
                                style: TextStyle(
                                    color: Color(0xFF1687A7), fontSize: 18)),
                          ],
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
                      height: 5.0,
                      color: Colors.green,
                    ),
                  ),
                )



              ],
            ),

          ],
        ),
      ),

    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
