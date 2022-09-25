import 'package:Aussi_slang_game_dictionerry/widgets/question.dart';
import 'dart:math';


class QuizBrain5 {int _questionNumber = Random().nextInt(57);
List<int> _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,];







List<Question> _questionBank = [Question	("	Hard as nails 	",["Something that is difficult or to suffer hardship. ","Without sentiment or sympathy for anyone. ","Possessing a determination to achieve something. ","Having unrealistic or impractical ideas. "],"Without sentiment or sympathy for anyone. "),
    Question	("	Head over heels in love 	",["Hear something through informal or unofficial means, like gossip. ","Very much in love with someone. ","Having good intentions, even if the results may not be impressive. ","When desirable things, such as money or happiness, are temporary. "],"Very much in love with someone. "),
    Question	("	High time 	",["To become successful. ","When something should have been done already and is overdue. ","Begin studying hard. ","Do or say something exactly right. "],"When something should have been done already and is overdue. "),
    Question	("	Hit the panic button 	",["Begin travelling or leave. ","Act quickly and without thinking in reaction to an unexpected event. ","Go to bed. ","Have responsibility for something or care about someone while others are away or out. "],"Act quickly and without thinking in reaction to an unexpected event. "),
    Question	("	Honest as the day is long 	",["Speak of a current issue which many people are talking about and which is usually disputed. ","Someone that is trustworthy and honest. ","When someone really needs something – their last chance. ","Everything will happen when it is supposed to or at the appropriate time. "],"Someone that is trustworthy and honest. "),
    Question	("	In one's own time 	",["Be in disgrace or disfavour with someone. ","Taking as long as you want to complete something or completing something at your own pace. ","Something that is assured or a guaranteed success. ","In profit. "],"Taking as long as you want to complete something or completing something at your own pace. "),
    Question	("	In the blink of an eye (or an instant) 	",["Overwhelmed by what is happening in the moment. ","Something that happens very quickly. ","Between two events or something that is temporary. ","Over a period of time. "],"Something that happens very quickly. "),
    Question	("	In the nick of time. 	",["In debt with your bank. To have a negative bank balance or to owe money to the bank. ","Just before it is too late. ","When something happens fortuitously or when given an unexpected opportunity. ","When something unlucky happens that would not normally have happened. "],"Just before it is too late. "),
    Question	("	In tune with someone (on the same wavelength) 	",["Actions or communications need more than one person. ","Have the same ideas and be in agreement with someone else. ","Strong impulse to travel or go somewhere. ","Judge something primarily on appearance. "],"Have the same ideas and be in agreement with someone else. "),
    Question	("	Jump on the bandwagon 	",["Keep something away or prevent something from happening. ","Join a popular trend or activity. ","Maintaining an outward show of prosperity or well-being while hiding your difficulties. ","Being constantly aware of current developments. "],"Join a popular trend or activity. "),
    Question	("	Kept in the dark 	",["Do something whilst waiting. ","Not knowing the secrets or truth. ","Accomplish two different things at the same time. ","Overwhelming victory. "],"Not knowing the secrets or truth. "),
    Question	("	Last straw 	",["Someone or something that is very funny. ","The final problem in a series of problems that leads to a bad thing happening. ","Learn something by memorising it without thought to what is being learnt. ","Memorise so well, that it can be written or recited without thinking. "],"The final problem in a series of problems that leads to a bad thing happening. "),
    Question	("	Learn the ropes 	",["Leave a situation undisturbed, since it would otherwise result in trouble or complications. ","Learn how to do a job or task properly. ","Failing to obtain or retain a good opportunity. ","Share information that was previously concealed. "],"Learn how to do a job or task properly. "),
    Question	("	Let slip through fingers 	",["Share information that was previously concealed. ","Trying to regain confidence after a defeat. ","Failing to obtain or retain a good opportunity. ","Very fast. "],"Failing to obtain or retain a good opportunity. "),
    Question	("	Lights are on but nobody is home 	",["Happens at very regular times or intervals without fail. ","Do something fast or energetic, as if it were the last opportunity to do so. ","Someone is stupid or lacking intelligence. ","Being well organised in preparation for something. "],"Someone is stupid or lacking intelligence. "),
    Question	("	Living beyond your means 	",["Living a lifestyle that saves or obscures you from real world issues. ","Having very little income. ","Spending more than you can afford. ","Far-reaching power of the authorities. "],"Spending more than you can afford. "),
    Question	("	Long time no see 	",["View an unpleasant situation in a positive light. ","Start feeling love towards someone the first time you see them. ","Not seen since long ago. ","Making an excessive display of affection. "],"Not seen since long ago. "),
    Question	("	Lump in your throat 	",["Come to the point without superfluous or unnecessary details. ","Something that makes me very happy or satisfies me. ","Tight feeling in the through because of an emotion like sadness, pride or gratitude. ","Circumstances causing total success or total failure. "],"Tight feeling in the through because of an emotion like sadness, pride or gratitude. "),
    Question	("	Make the grade 	",["Find time to do something as a priority. ","Something that makes you feel disgusted or nervous. ","Be satisfactory or at an accepted level. ","Attempting to succeed at something. "],"Be satisfactory or at an accepted level. "),
    Question	("	Making good time 	",["Making progress in what you are trying to do. ","Relationship that is likely to be happy and successful. ","Completing something faster than expected. ","Despite one's approach seeming random, there actually is structure to it. "],"Completing something faster than expected. "),
    Question	("	Mile a minute 	",["Miss a chance or opportunity. ","Mischievous or deceitful behaviour. ","Happens very quickly. ","A very long period of time. "],"Happens very quickly. "),
    Question	("	Murphy's law 	",["Will never happen. ","The belief it is better to do something right away instead of waiting. ","Anything that can go wrong will go wrong. ","Start something right away, otherwise it won't be finished on time. "],"Anything that can go wrong will go wrong. "),
    Question	("	Not letting grass grow under your feet 	",["Doing something now or without delay. ","Lacking intelligence. ","Not delaying in getting something done. ","Occasionally. "],"Not delaying in getting something done. "),
    Question	("	Now or never 	",["Unwell. ","Crazy; demented; out of one's mind; in a confused or befuddled state of mind; senile. ","Something that should be done now or it will never be done. ","Something that is immediately successful or has begun well. "],"Something that should be done now or it will never be done. "),
    Question	("	Old hand 	",["Holding ideas that were popular and important in the past but which are no longer so. ","When someone understands the situation well or is doing well. ","Person with a lot of experience in something. ","Thinking or talking about something constantly. "],"Person with a lot of experience in something. "),
    Question	("	On the rocks 	",["Not being late or something happening at the expected time. ","Happens very rarely or once in a lifetime. ","Relationship experiencing problems. ","Something that happened a long time ago. "],"Relationship experiencing problems. "),
    Question	("	Only time will tell 	",["Appear suddenly from nowhere and without warning. ","No longer in debt. ","The truth, answer or result, will be revealed at some future point. ","No time left to do something or a set time has been reached. "],"The truth, answer or result, will be revealed at some future point. "),
    Question	("	Paint the town red 	",["Pass with a high score. ","A way of asking what someone is thinking. ","Go out and have a really good time at a party. ","Visual presentations are far more descriptive than words. "],"Go out and have a really good time at a party. "),
    Question	("	Piece of cake 	",["Very dark with zero or almost zero visibility. ","A position that provides you all the success and happiness you want. ","A job, task or other activity that is easy or simple. ","Propose marriage to someone. "],"A job, task or other activity that is easy or simple. "),
    Question	("	Pot calling the kettle black 	",["Being rushed or not having enough time to complete something. ","Very proud ","Hypocritically criticise or accuse someone else is as guilty as the person criticising. ","Terminate or discontinue something. "],"Hypocritically criticise or accuse someone else is as guilty as the person criticising. "),
    Question	("	Pull wool over other people's eyes 	",["Doing everything you can to make something happen. ","Performing beyond your ability. ","Deceive someone into thinking well of them. ","Temporary infatuation between young people. "],"Deceive someone into thinking well of them. "),
    Question	("	Put it in black and white 	",["Engage your mind and think in a serious manner. ","Becoming very rich whilst starting very poor. ","Write down for confirmation or evidence. ","Raining very heavily. "],"Write down for confirmation or evidence. "),
    Question	("	Raise the white flag 	",["Being very eager or enthusiastic about the idea. ","Exhausting and repetitive routine. ","Accept defeat and surrender to the other party. ","Signal or indication that something is not working properly of correctly. "],"Accept defeat and surrender to the other party. "),
    Question	("	Red herring 	",["New and exciting, creating much demand. ","Embarrassed. ","Unimportant matter that misleads and draws attention away. ","Set of rules and/or regulations that slow or stop progress. "],"Unimportant matter that misleads and draws attention away. "),
    Question	("	Red-eye 	",["Dangerous driver. ","Greet a person with great respect and give them a big, warm welcome. ","Journey that leaves late in the night and arrives early in the morning. ","Being successful as something without difficulty. "],"Journey that leaves late in the night and arrives early in the morning. "),
    Question	("	Save time 	",["Learning through difficult experiences, as opposed to formal, classroom education. ","Particular philosophy or way of thinking about something. ","Do something quickly or in a way that allow time for other things. ","Very basic or foolish mistake. "],"Do something quickly or in a way that allow time for other things. "),
    Question	("	Seeing eye to eye 	",["React with uncontrollable rage. ","Persuade people to go against their best interests or to accept something unnecessary. ","Two or more people agree on something. ","The expected duration of lifespan of something (typically food, drink or medicine). "],"Two or more people agree on something. "),
    Question	("	Show of hands 	",["Fail or succeed. ","Doing something with a lot of energy and enthusiasm. ","Raising hands to vote about something. ","Unable or unwilling choose or make a decision. "],"Raising hands to vote about something. "),
    Question	("	Sink or swim 	",["Doing something with a lot of energy and enthusiasm. ","Unable or unwilling choose or make a decision. ","Not go to school when you should. ","Fail or succeed. "],"Fail or succeed. "),
    Question	("	Sleeping (or silent) partner 	",["Share of something, such as money, profits, etc. ","A big success. ","Having too much to do. ","Person who has put money into a business or venture but who is not involved in running it. "],"Person who has put money into a business or venture but who is not involved in running it. "),
    Question	("	Sooner or later 	",["Pretending to dislike something you cannot have. ","Suddenly disrupt something by introducing something unexpected or unwanted. ","When the person you have just been talking about arrives. ","Something is certain to happen but it isn't known when exactly. "],"Something is certain to happen but it isn't known when exactly. "),
    Question	("	Speaks volumes 	",["Reveal a secret. ","Maintaining your position ","Something that lasts or continues to work well for a long time. ","Express a reaction without words. "],"Express a reaction without words. "),
    Question	("	Steal someone's thunder 	",["Not showing emotions. ","Exaggerate a problem. ","From the authoritative source. ","Take the credit for something someone else did. "],"Take the credit for something someone else did. "),
    Question	("	Stuck in a time warp 	",["Accepting something humiliating or embarrassing. ","Liking for sweet-tasting foods. ","Deal with things as and when they happen. ","Not changed for a very long time, when everything else around has. "],"Not changed for a very long time, when everything else around has. "),
    Question	("	Take with a grain (or pinch) of salt 	",["Something happens to you, or is done to you, that you have done to someone else. ","Teacher's favourite student. ","The top level of a profession ","Not to take what someone says too seriously. Be sceptical about something. "],"Not to take what someone says too seriously. Be sceptical about something. "),
    Question	("	The moment of truth 	",["A particular opportunity has passed and is no longer available. ","The right or most opportune moment to do something. ","Adjusting quickly to change and making fast decisions. ","When an important decision is made or the truth about something is revealed. "],"When an important decision is made or the truth about something is revealed. "),
    Question	("	This day and age 	",["Very pleased, thrilled or delighted about something. ","Get married. ","Do something repeatedly ","These or modern times. "],"These or modern times. "),
    Question	("	Time flies 	",["Stop what you are doing and start doing something else. ","Feelings of hurt (usually emotional) will go away after some time has passed. ","Time is a valuable commodity. Payment is needed before doing something. ","When time passes quickly. "],"When time passes quickly. "),
    Question	("	Time is of the essence 	",["A time when someone is enjoying themselves. ","When you can afford to wait before doing or achieving something. ","Difficulty in expressing yourself because of nervousness or embarrassment. ","When meeting a deadline is very important or critical. "],"When meeting a deadline is very important or critical. "),
    Question	("	Too many chiefs and not enough Indians 	",["When someone doesn't have enough to do. ","Most important person in a group. ","Most important person. ","Too many people telling others what to do. "],"Too many people telling others what to do. "),
    Question	("	Tough cookie 	",["Clever or expert way of doing something. ","Someone's actual character. ","Reverse something or go back to a time in the past. ","Very determined person. "],"Very determined person. "),
    Question	("	University of life 	",["Something will never happen, no matter how hard or long you try for it to. ","Something that ends before getting a result. ","Waiting for an opportunity to take action. ","Daily life and work where you learn more than you would through formal education. "],"Daily life and work where you learn more than you would through formal education. "),
    Question	("	Walk out on someone 	",["Doing something with no purpose. ","Unit of people or a group of things working well together. ","Enjoying something thoroughly. ","Leave a partner and end the relationship. "],"Leave a partner and end the relationship. "),
    Question	("	White as a sheet (or ghost) 	",["Officer worker. ","Expensive item that's costly to maintain and not particularly useful. ","Little or harmless lie told to be polite and avoid hurting someone's feelings. ","In a state of great fear or anxiety. "],"In a state of great fear or anxiety. "),
    Question	("	Whitewash 	",["Everything. All of it. ","When you are delighted and eager to go somewhere. ","Imaginary prize for the last person in a race. ","Cover up or gloss over faults. "],"Cover up or gloss over faults. "),
    Question	("	Works like a charm 	",["Would never like to do something. ","Happens every year for many years in a row. ","Coward ","Works very well or as expected. "],"Works very well or as expected. "),
    Question	("	You can't teach an old dog new tricks 	",["Not knowing the answer. ","Very determined person. ","Little or harmless lie told to be polite and avoid hurting someone's feelings. ","People used to doing things a certain way are often unable to change their ways. "],"People used to doing things a certain way are often unable to change their ways. "),

  ];




  void nextQuestion() {

    if (_questionNum.length>1) {
      _questionNum.remove(_questionNumber);
      _questionNumber=Random().nextInt(_questionNum.length);
      _questionNumber=_questionNum[_questionNumber];


    }
  }

  String getMcqList(a) {
    return  _questionBank[_questionNumber].mcqList[a];
  }
  String getMcqAnswer() {
    return _questionBank[_questionNumber].mcqAnswer;
  }


  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

//  bool getCorrectAnswer() {
//    return _questionBank[_questionNumber].questionAnswer;
//  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNum.length==1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }



  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {_questionNumber = Random().nextInt(57);
   _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,];
  }
}
