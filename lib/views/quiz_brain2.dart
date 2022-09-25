
import 'dart:math';
import 'package:Aussi_slang_game_dictionerry/widgets/question.dart';

class QuizBrain2 {int _questionNumber = Random().nextInt(80);
List<int> _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,];




List<Question> _questionBank = [Question	("	Stiff upper lip 	",["Exaggerate a problem. ","From the authoritative source. ","Not changed for a very long time, when everything else around has. ","Not showing emotions. "],"Not showing emotions. "),
    Question	("	Swallow one's pride 	",["Liking for sweet-tasting foods. ","Deal with things as and when they happen. ","Not to take what someone says too seriously. Be sceptical about something. ","Accepting something humiliating or embarrassing. "],"Accepting something humiliating or embarrassing. "),
    Question	("	Taste of your own medicine 	",["Teacher's favourite student. ","The top level of a profession ","When an important decision is made or the truth about something is revealed. ","Something happens to you, or is done to you, that you have done to someone else. "],"Something happens to you, or is done to you, that you have done to someone else. "),
    Question	("	The ship has sailed 	",["The right or most opportune moment to do something. ","Adjusting quickly to change and making fast decisions. ","These or modern times. ","A particular opportunity has passed and is no longer available. "],"A particular opportunity has passed and is no longer available. "),
    Question	("	Tickled pink 	",["Get married. ","Do something repeatedly ","When time passes quickly. ","Very pleased, thrilled or delighted about something. "],"Very pleased, thrilled or delighted about something. "),
    Question	("	Time for a change 	",["Feelings of hurt (usually emotional) will go away after some time has passed. ","Time is a valuable commodity. Payment is needed before doing something. ","When meeting a deadline is very important or critical. ","Stop what you are doing and start doing something else. "],"Stop what you are doing and start doing something else. "),
    Question	("	Time of one's life 	",["When you can afford to wait before doing or achieving something. ","Difficulty in expressing yourself because of nervousness or embarrassment. ","Too many people telling others what to do. ","A time when someone is enjoying themselves. "],"A time when someone is enjoying themselves. "),
    Question	("	Too much (free) time on one's hand 	",["Most important person in a group. ","Most important person. ","Very determined person. ","When someone doesn't have enough to do. "],"When someone doesn't have enough to do. "),
    Question	("	Tricks of the trade 	",["Someone's actual character. ","Reverse something or go back to a time in the past. ","Daily life and work where you learn more than you would through formal education. ","Clever or expert way of doing something. "],"Clever or expert way of doing something. "),
    Question	("	Until hell freezes over 	",["Something that ends before getting a result. ","Waiting for an opportunity to take action. ","Leave a partner and end the relationship. ","Something will never happen, no matter how hard or long you try for it to. "],"Something will never happen, no matter how hard or long you try for it to. "),
    Question	("	Wasting time 	",["Unit of people or a group of things working well together. ","Enjoying something thoroughly. ","In a state of great fear or anxiety. ","Doing something with no purpose. "],"Doing something with no purpose. "),
    Question	("	White collar 	",["Expensive item that's costly to maintain and not particularly useful. ","Little or harmless lie told to be polite and avoid hurting someone's feelings. ","Cover up or gloss over faults. ","Officer worker. "],"Officer worker. "),
    Question	("	Whole nine yards 	",["When you are delighted and eager to go somewhere. ","Imaginary prize for the last person in a race. ","Works very well or as expected. ","Everything. All of it. "],"Everything. All of it. "),
    Question	("	Wouldn't be caught dead 	",["Happens every year for many years in a row. ","Coward ","People used to doing things a certain way are often unable to change their ways. ","Would never like to do something. "],"Would never like to do something. "),
    Question	("	Your guess is as good as mine 	",["Someone's actual character. ","Clever or expert way of doing something. ","Cover up or gloss over faults. ","Not knowing the answer. "],"Not knowing the answer. "),
    Question	("	Actions speak louder than words 	",["People's intentions can be judged better by what they do than what they say. ","To further a loss with mockery or indignity; to worsen an unfavourable situation. ","A time when after which programmes for older audiences may be aired on TV. ","Being rushed and having little time to complete something. "],"People's intentions can be judged better by what they do than what they say. "),
    Question	("	Ahead of time 	",["Something that happens early or before it is supposed to. ","Awaiting an explanation. ","Very expensive or costly. A large amount of money. ","At any time of the day or night "],"Something that happens early or before it is supposed to. "),
    Question	("	Around the corner 	",["Will happen soon. ","The passing of one moment to the next. ","Without any hesitation; instantly. ","An approach that uses traditional ideas that have previously worked. "],"Will happen soon. "),
    Question	("	Back to the drawing board 	",["When an attempt fails and it's time to start all over. ","Troublemaker or undesirable person in a group. ","It is up to you to make the next decision or take the next step. ","Looking in the wrong place. Accusing the wrong person. "],"When an attempt fails and it's time to start all over. "),
    Question	("	Be glad to see the back of 	",["Be happy when a person leaves. ","Avoiding the main topic. Not speaking directly about the issue. ","Do something quickly before it's too late. ","Carrying and idea that's constantly in your thoughts. "],"Be happy when a person leaves. "),
    Question	("	Behind the times 	",["Being old-fashioned. ","Lots of desirable features. ","Enjoying the advantage of two things simultaneously. ","A good invention or innovation. A good idea or plan. "],"Being old-fashioned. "),
    Question	("	Better late than never 	",["It is better to do something late than not at all. ","Waiting for further developments before taking action or making decisions. ","Influential person ","Better to be satisfied with what you have than risk losing it by trying to get something better. "],"It is better to do something late than not at all. "),
    Question	("	Bite off more than you can chew 	",["To take on a task that is way too big. ","Badly bruised. ","Take everything into consideration and over simply. Judge everything good or bad. ","Very dark and hard to see. "],"To take on a task that is way too big. "),
    Question	("	Black eye 	",["Bruise around the eye. ","Where goods are illegally bought and sold for profit. ","Darken by turning off or dimming the lights. Lose consciousness. ","Undesirable member of a group. "],"Bruise around the eye. "),
    Question	("	Blackball 	",["Exclude or ostracise someone socially. Reject someone. ","Exclude someone. ","Extort or take money from someone by threatening to use their secrets against them. ","Something good that isn't recognised as such at first. "],"Exclude or ostracise someone socially. Reject someone. "),
    Question	("	Blind date 	",["Pre-arranged social interaction between people who have never met. ","Description of something with a deep red colour. ","Something that requires a lot of effort and hard work. ","Suddenly get very angry, perhaps over something unexpected. "],"Pre-arranged social interaction between people who have never met. "),
    Question	("	Blow up in the face 	",["A plan or project that suddenly fails. ","From noble, aristocratic or wealthy family. ","Working in a manual labour job. ","Try hard to win an agreement but usually unsuccessful. "],"A plan or project that suddenly fails. "),
    Question	("	Blue ribbon 	",["Superior quality or distinction. The best of a group. ","Unexpected bad news. ","Someone who reads a lot. ","Born into a rich and affluent family. "],"Superior quality or distinction. The best of a group. "),
    Question	("	Bottom falls out 	",["A plan or project that fails. ","Develop or think of new ideas. ","Person that is the primary source of income for a family. ","Earn a living. "],"A plan or project that fails. "),
    Question	("	Broken watch is right twice a day 	",["When something is lucky or successful but undeserving. ","Working hard with determination and full attention. ","Pregnant. ","To work late into the night, alluding to the time before electric lighting. "],"When something is lucky or successful but undeserving. "),
    Question	("	Butter up 	",["Flatter someone, usually because you want something from them. ","Something happens of develops gradually or little by little. ","Only just succeed. ","Stop doing something for a while or until the next day (or night). "],"Flatter someone, usually because you want something from them. "),
    Question	("	Calling time 	",["Deciding to end something. ","Having string feelings for someone who cannot be yours. ","Dependable source of income. ","Thief who climbs into buildings. "],"Deciding to end something. "),
    Question	("	Catch someone at a bad time 	",["When it is inconvenient. ","Catch someone in the act of committing a crime or doing something they shouldn't. ","Deciding to do something even though the chances of success are slim or unknown. ","Try to achieve something that is very difficult, impossible or very desirable. "],"When it is inconvenient. "),
    Question	("	Chase your tail 	",["Spend a lot of time and energy but achieve nothing. ","Tacky, silly, inauthentic or cheap. ","Record the time of arrival and the time of departure. ","A comment that is true and makes you uncomfortable. "],"Spend a lot of time and energy but achieve nothing. "),
    Question	("	Cold shoulder 	",["Pay no attention to. ","When something develops completely and reached maturity. When a child becomes an adult. ","Spoil the person's chance of success. ","Someone who copies the work of another. "],"Pay no attention to. "),
    Question	("	Costs an arm and a leg 	",["When something is very expensive. ","Lazy person who watches too much TV. ","Complete a lot of work or a wide range of things. ","Very early in the morning. The first moments of sunrise. "],"When something is very expensive. "),
    Question	("	Cross that bridge when you come to it 	",["Deal with a problem if and when it becomes necessary, not before. ","When an important decision needs to be made by. ","Complain about a loss from the past. ","Being Inquisitive can lead you into an unpleasant or dangerous situation. "],"Deal with a problem if and when it becomes necessary, not before. "),
    Question	("	Cut corners 	",["When something is done quickly, and typically badly, to save money. ","Doing something that will cause your own failure or downfall. ","To succeed; to come up to expectations; adequate enough to compete or participate. ","Getting to the point. "],"When something is done quickly, and typically badly, to save money. "),
    Question	("	Day to day 	",["Part of a usual routine. ","Expected to be in a role or to die soon. ","Plan or event that has failed or is certain to fail and therefore not worth discussing. ","Plan or project that has ceased to function and is not expected to re-activate. "],"Part of a usual routine. "),
    Question	("	Dead wood 	",["People or things that are no longer useful or necessary. ","Describing what a person really feels deep inside them ","Do what is expected or required. ","Spend time in prison. "],"People or things that are no longer useful or necessary. "),
    Question	("	Do time (serve time) 	",["A very long period of time. ","Spend time in prison. ","Don't make plans for something that might not happen. ","You are not very good at something. You could definitely not do it professionally. "],"Spend time in prison. "),
    Question	("	Don't put all your eggs in one basket 	",["Social interaction that involves two couples. ","Don't make everything dependent on only one thing. ","When you are extremely desperate you need to take drastic actions. ","Get no response from someone when you ask them a question or to have no answer yourself. "],"Don't make everything dependent on only one thing. "),
    Question	("	Dropout 	",["Thinking too much about something that happened in the past. ","Stop attending school before it is time. ","Enthusiastic and hard worker. ","Very simple or easy. "],"Stop attending school before it is time. "),
    Question	("	Eat, sleep & breathe something 	",["Studious and academic person. ","Being so enthusiastic and passionate about something that you think about it all the time. ","Enough space to move or work in. ","At the very last minute or just in time. "],"Being so enthusiastic and passionate about something that you think about it all the time. "),
    Question	("	Elvis has left the building 	",["Be optimistic, even difficult times will lead to better days. Good can come from a bad situation. ","The show has come to an end. It's all over. ","Investigating or examining every option. ","Tending to attract attention. "],"The show has come to an end. It's all over. "),
    Question	("	Fallen in love 	",["Very different from. ","Start feeling love towards someone. ","Feeling depressed or disconnected. ","Feeling unwell. "],"Start feeling love towards someone. "),
    Question	("	Fever pitch 	",["Supply missing words or information. ","When a feeling is very intense and exciting. ","The opportunity is afforded to the first to arrive or present themselves. ","Being the first one to make a start at something "],"When a feeling is very intense and exciting. "),
    Question	("	Fish out of water 	",["Small but good start with the possibility of a bright future. ","Feeling uncomfortable in unfamiliar surroundings ","An action or state will continue into the future but is temporary. ","From this time forward. "],"Feeling uncomfortable in unfamiliar surroundings "),
    Question	("	From time to time 	",["Excited or very energetic and lively. ","Occasionally or not very often. ","Very happy and full of energy. ","To lose your job. "],"Occasionally or not very often. "),
    Question	("	Getting the show on the road 	",["Believe someone's statement, without proof. ","Putting a plan or idea into action. ","Provide permission to proceed. ","Fail completely. "],"Putting a plan or idea into action. "),
    Question	("	Going places 	",["Young man idolised for a great skill, typically in sport. ","Demonstrating talent and ability that will lead to success. ","Large sum of money given to someone when they retire from a company. ","A very good opportunity that may never present itself again. "],"Demonstrating talent and ability that will lead to success. "),
    Question	("	Grass is always greener on the other side 	",["Give someone money in order to persuade them to do something dishonest. ","The alternative solution may seem better even if that isn't always the case. ","Ability to make plants grow or be good at gardening. ","Extremely jealous or full of envy. "],"The alternative solution may seem better even if that isn't always the case. "),
    Question	("	Grey area 	",["Continuing to do something in a very difficult situation. ","Unclear or undefined. ","Without sentiment or sympathy for anyone. ","Something that is difficult or to suffer hardship. "],"Unclear or undefined. "),
    Question	("	Having one's heart set on something 	",["Having unrealistic or impractical ideas. ","Possessing a determination to achieve something. ","Very much in love with someone. ","Hear something through informal or unofficial means, like gossip. "],"Possessing a determination to achieve something. "),
    Question	("	Heart is in the right place 	",["When desirable things, such as money or happiness, are temporary. ","Having good intentions, even if the results may not be impressive. ","When something should have been done already and is overdue. ","To become successful. "],"Having good intentions, even if the results may not be impressive. "),
    Question	("	Hit the books 	",["Do or say something exactly right. ","Begin studying hard. ","Act quickly and without thinking in reaction to an unexpected event. ","Begin travelling or leave. "],"Begin studying hard. "),
    Question	("	Hit the sack (or sheets, or hay) 	",["Have responsibility for something or care about someone while others are away or out. ","Go to bed. ","Someone that is trustworthy and honest. ","Speak of a current issue which many people are talking about and which is usually disputed. "],"Go to bed. "),
    Question	("	Hour of need 	",["Everything will happen when it is supposed to or at the appropriate time. ","When someone really needs something – their last chance. ","Taking as long as you want to complete something or completing something at your own pace. ","Be in disgrace or disfavour with someone. "],"When someone really needs something – their last chance. "),
    Question	("	In the bag 	",["In profit. ","Something that is assured or a guaranteed success. ","Something that happens very quickly. ","Overwhelmed by what is happening in the moment. "],"Something that is assured or a guaranteed success. "),
    Question	("	In the interim 	",["Over a period of time. ","Between two events or something that is temporary. ","Just before it is too late. ","In debt with your bank. To have a negative bank balance or to owe money to the bank. "],"Between two events or something that is temporary. "),
    Question	("	In the right place at the right time 	",["When something unlucky happens that would not normally have happened. ","When something happens fortuitously or when given an unexpected opportunity. ","Have the same ideas and be in agreement with someone else. ","Actions or communications need more than one person. "],"When something happens fortuitously or when given an unexpected opportunity. "),
    Question	("	Itchy feet 	",["Judge something primarily on appearance. ","Strong impulse to travel or go somewhere. ","Join a popular trend or activity. ","Keep something away or prevent something from happening. "],"Strong impulse to travel or go somewhere. "),
    Question	("	Keeping up appearances 	",["Being constantly aware of current developments. ","Maintaining an outward show of prosperity or well-being while hiding your difficulties. ","Not knowing the secrets or truth. ","Do something whilst waiting. "],"Maintaining an outward show of prosperity or well-being while hiding your difficulties. "),
    Question	("	Kill two birds with one stone 	",["Overwhelming victory. ","Accomplish two different things at the same time. ","The final problem in a series of problems that leads to a bad thing happening. ","Someone or something that is very funny. "],"Accomplish two different things at the same time. "),
    Question	("	Learn by rote 	",["Memorise so well, that it can be written or recited without thinking. ","Learn something by memorising it without thought to what is being learnt. ","Learn how to do a job or task properly. ","Leave a situation undisturbed, since it would otherwise result in trouble or complications. "],"Learn something by memorising it without thought to what is being learnt. "),
    Question	("	Let me see the colour of your money 	",["Leave a situation undisturbed, since it would otherwise result in trouble or complications. ","Failing to obtain or retain a good opportunity. ","Prove that you can afford something. ","Share information that was previously concealed. "],"Prove that you can afford something. "),
    Question	("	Lick one's wounds 	",["Very fast. ","Someone is stupid or lacking intelligence. ","Trying to regain confidence after a defeat. ","Happens at very regular times or intervals without fail. "],"Trying to regain confidence after a defeat. "),
    Question	("	Like there's no tomorrow 	",["Being well organised in preparation for something. ","Spending more than you can afford. ","Do something fast or energetic, as if it were the last opportunity to do so. ","Living a lifestyle that saves or obscures you from real world issues. "],"Do something fast or energetic, as if it were the last opportunity to do so. "),
    Question	("	Living on the breadline 	",["Far-reaching power of the authorities. ","Not seen since long ago. ","Having very little income. ","View an unpleasant situation in a positive light. "],"Having very little income. "),
    Question	("	Love at first sight 	",["Making an excessive display of affection. ","Tight feeling in the through because of an emotion like sadness, pride or gratitude. ","Start feeling love towards someone the first time you see them. ","Come to the point without superfluous or unnecessary details. "],"Start feeling love towards someone the first time you see them. "),
    Question	("	Make my day 	",["Circumstances causing total success or total failure. ","Be satisfactory or at an accepted level. ","Something that makes me very happy or satisfies me. ","Find time to do something as a priority. "],"Something that makes me very happy or satisfies me. "),
    Question	("	Makes your flesh crawl 	",["Attempting to succeed at something. ","Completing something faster than expected. ","Something that makes you feel disgusted or nervous. ","Making progress in what you are trying to do. "],"Something that makes you feel disgusted or nervous. "),
    Question	("	Match made in heaven 	",["Despite one's approach seeming random, there actually is structure to it. ","Happens very quickly. ","Relationship that is likely to be happy and successful. ","Miss a chance or opportunity. "],"Relationship that is likely to be happy and successful. "),
    Question	("	Monkey business 	",["A very long period of time. ","Anything that can go wrong will go wrong. ","Mischievous or deceitful behaviour. ","Will never happen. "],"Mischievous or deceitful behaviour. "),
    Question	("	No time like the present 	",["Start something right away, otherwise it won't be finished on time. ","Not delaying in getting something done. ","The belief it is better to do something right away instead of waiting. ","Doing something now or without delay. "],"The belief it is better to do something right away instead of waiting. "),
    Question	("	Not playing with a full deck 	",["Occasionally. ","Something that should be done now or it will never be done. ","Lacking intelligence. ","Unwell. "],"Lacking intelligence. "),
    Question	("	Off one's rocker 	",["Something that is immediately successful or has begun well. ","Person with a lot of experience in something. ","Crazy; demented; out of one's mind; in a confused or befuddled state of mind; senile. ","Holding ideas that were popular and important in the past but which are no longer so. "],"Crazy; demented; out of one's mind; in a confused or befuddled state of mind; senile. "),
    Question	("	On the ball 	",["Thinking or talking about something constantly. ","Relationship experiencing problems. ","When someone understands the situation well or is doing well. ","Not being late or something happening at the expected time. "],"When someone understands the situation well or is doing well. "),
    Question	("	Once in a blue moon 	",["Something that happened a long time ago. ","The truth, answer or result, will be revealed at some future point. ","Happens very rarely or once in a lifetime. ","Appear suddenly from nowhere and without warning. "],"Happens very rarely or once in a lifetime. "),
    Question	("	Out of the red 	",["No time left to do something or a set time has been reached. ","Go out and have a really good time at a party. ","No longer in debt. ","Pass with a high score. "],"No longer in debt. "),


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
  void reset() { _questionNumber = Random().nextInt(80);
   _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,];
  }
}
