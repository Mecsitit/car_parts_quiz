import 'package:Aussi_slang_game_dictionerry/widgets/question.dart';
import 'dart:math';


class QuizBrain {
  int _questionNumber = Random().nextInt(79);
  List<int> _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,];






  List<Question> _questionBank = [Question	("	Acid test 	",["Proves the effectiveness of something. ","People's intentions can be judged better by what they do than what they say. ","To further a loss with mockery or indignity; to worsen an unfavourable situation. ","A time when after which programmes for older audiences may be aired on TV. "],"Proves the effectiveness of something. "),
    Question	("	Against the clock 	",["Being rushed and having little time to complete something. ","Something that happens early or before it is supposed to. ","Awaiting an explanation. ","Very expensive or costly. A large amount of money. "],"Being rushed and having little time to complete something. "),
    Question	("	Around the clock 	",["At any time of the day or night ","Will happen soon. ","The passing of one moment to the next. ","Without any hesitation; instantly. "],"At any time of the day or night "),
    Question	("	Back to basics 	",["An approach that uses traditional ideas that have previously worked. ","When an attempt fails and it's time to start all over. ","Troublemaker or undesirable person in a group. ","It is up to you to make the next decision or take the next step. "],"An approach that uses traditional ideas that have previously worked. "),
    Question	("	Barking up the wrong tree 	",["Looking in the wrong place. Accusing the wrong person. ","Be happy when a person leaves. ","Avoiding the main topic. Not speaking directly about the issue. ","Do something quickly before it's too late. "],"Looking in the wrong place. Accusing the wrong person. "),
    Question	("	Bee in one's bonnet 	",["Carrying and idea that's constantly in your thoughts. ","Being old-fashioned. ","Lots of desirable features. ","Enjoying the advantage of two things simultaneously. "],"Carrying and idea that's constantly in your thoughts. "),
    Question	("	Best thing since sliced bread 	",["A good invention or innovation. A good idea or plan. ","It is better to do something late than not at all. ","Waiting for further developments before taking action or making decisions. ","Influential person "],"A good invention or innovation. A good idea or plan. "),
    Question	("	Bird in the hand is worth two in the bush 	",["Better to be satisfied with what you have than risk losing it by trying to get something better. ","To take on a task that is way too big. ","Badly bruised. ","Take everything into consideration and over simply. Judge everything good or bad. "],"Better to be satisfied with what you have than risk losing it by trying to get something better. "),
    Question	("	Black as night 	",["Very dark and hard to see. ","Bruise around the eye. ","Where goods are illegally bought and sold for profit. ","Darken by turning off or dimming the lights. Lose consciousness. "],"Very dark and hard to see. "),
    Question	("	Black sheep 	",["Undesirable member of a group. ","Exclude or ostracise someone socially. Reject someone. ","Exclude someone. ","Extort or take money from someone by threatening to use their secrets against them. "],"Undesirable member of a group. "),
    Question	("	Blessing in disguise 	",["Something good that isn't recognised as such at first. ","Pre-arranged social interaction between people who have never met. ","Description of something with a deep red colour. ","Something that requires a lot of effort and hard work. "],"Something good that isn't recognised as such at first. "),
    Question	("	Blow a fuse 	",["Suddenly get very angry, perhaps over something unexpected. ","A plan or project that suddenly fails. ","From noble, aristocratic or wealthy family. ","Working in a manual labour job. "],"Suddenly get very angry, perhaps over something unexpected. "),
    Question	("	Blue in the face 	",["Try hard to win an agreement but usually unsuccessful. ","Superior quality or distinction. The best of a group. ","Unexpected bad news. ","Someone who reads a lot. "],"Try hard to win an agreement but usually unsuccessful. "),
    Question	("	Born with a silver spoon in one's mouth 	",["Born into a rich and affluent family. ","A plan or project that fails. ","Develop or think of new ideas. ","Person that is the primary source of income for a family. "],"Born into a rich and affluent family. "),
    Question	("	Bring home the bacon 	",["Earn a living. ","When something is lucky or successful but undeserving. ","Working hard with determination and full attention. ","Pregnant. "],"Earn a living. "),
    Question	("	Burn the midnight oil 	",["To work late into the night, alluding to the time before electric lighting. ","Flatter someone, usually because you want something from them. ","Something happens of develops gradually or little by little. ","Only just succeed. "],"To work late into the night, alluding to the time before electric lighting. "),
    Question	("	Call it a day (or night) 	",["Stop doing something for a while or until the next day (or night). ","Deciding to end something. ","Having string feelings for someone who cannot be yours. ","Dependable source of income. "],"Stop doing something for a while or until the next day (or night). "),
    Question	("	Cat burglar 	",["Thief who climbs into buildings. ","When it is inconvenient. ","Catch someone in the act of committing a crime or doing something they shouldn't. ","Deciding to do something even though the chances of success are slim or unknown. "],"Thief who climbs into buildings. "),
    Question	("	Chase rainbows 	",["Try to achieve something that is very difficult, impossible or very desirable. ","Spend a lot of time and energy but achieve nothing. ","Tacky, silly, inauthentic or cheap. ","Record the time of arrival and the time of departure. "],"Try to achieve something that is very difficult, impossible or very desirable. "),
    Question	("	Close to home 	",["A comment that is true and makes you uncomfortable. ","Pay no attention to. ","When something develops completely and reached maturity. When a child becomes an adult. ","Spoil the person's chance of success. "],"A comment that is true and makes you uncomfortable. "),
    Question	("	Copycat 	",["Someone who copies the work of another. ","When something is very expensive. ","Lazy person who watches too much TV. ","Complete a lot of work or a wide range of things. "],"Someone who copies the work of another. "),
    Question	("	Crack of dawn 	",["Very early in the morning. The first moments of sunrise. ","Deal with a problem if and when it becomes necessary, not before. ","When an important decision needs to be made by. ","Complain about a loss from the past. "],"Very early in the morning. The first moments of sunrise. "),
    Question	("	Curiosity killed the cat 	",["Being Inquisitive can lead you into an unpleasant or dangerous situation. ","When something is done quickly, and typically badly, to save money. ","Doing something that will cause your own failure or downfall. ","To succeed; to come up to expectations; adequate enough to compete or participate. "],"Being Inquisitive can lead you into an unpleasant or dangerous situation. "),
    Question	("	Cut to the chase 	",["Getting to the point. ","Part of a usual routine. ","Expected to be in a role or to die soon. ","Plan or event that has failed or is certain to fail and therefore not worth discussing. "],"Getting to the point. "),
    Question	("	Dead in the water 	",["Plan or project that has ceased to function and is not expected to re-activate. ","People or things that are no longer useful or necessary. ","Describing what a person really feels deep inside them ","Do what is expected or required. "],"Plan or project that has ceased to function and is not expected to re-activate. "),
    Question	("	Devil's Advocate 	",["Spend time in prison. ","To present a counter argument. ","A very long period of time. ","Don't make plans for something that might not happen. "],"To present a counter argument. "),
    Question	("	Don't give up the day job 	",["Don't make everything dependent on only one thing. ","You are not very good at something. You could definitely not do it professionally. ","Social interaction that involves two couples. ","When you are extremely desperate you need to take drastic actions. "],"You are not very good at something. You could definitely not do it professionally. "),
    Question	("	Drawing a blank 	",["Stop attending school before it is time. ","Get no response from someone when you ask them a question or to have no answer yourself. ","Thinking too much about something that happened in the past. ","Enthusiastic and hard worker. "],"Get no response from someone when you ask them a question or to have no answer yourself. "),
    Question	("	Easy as ABC 	",["Being so enthusiastic and passionate about something that you think about it all the time. ","Very simple or easy. ","Studious and academic person. ","Enough space to move or work in. "],"Very simple or easy. "),
    Question	("	Eleventh hour 	",["The show has come to an end. It's all over. ","At the very last minute or just in time. ","Be optimistic, even difficult times will lead to better days. Good can come from a bad situation. ","Investigating or examining every option. "],"At the very last minute or just in time. "),
    Question	("	Eye-catching 	",["Start feeling love towards someone. ","Tending to attract attention. ","Very different from. ","Feeling depressed or disconnected. "],"Tending to attract attention. "),
    Question	("	Feeling under the weather 	",["When a feeling is very intense and exciting. ","Feeling unwell. ","Supply missing words or information. ","The opportunity is afforded to the first to arrive or present themselves. "],"Feeling unwell. "),
    Question	("	First out of the gate 	",["Feeling uncomfortable in unfamiliar surroundings ","Being the first one to make a start at something ","Small but good start with the possibility of a bright future. ","An action or state will continue into the future but is temporary. "],"Being the first one to make a start at something "),
    Question	("	From now on 	",["Occasionally or not very often. ","From this time forward. ","Excited or very energetic and lively. ","Very happy and full of energy. "],"From this time forward. "),
    Question	("	Getting sacked (or axed, or fired) 	",["Putting a plan or idea into action. ","To lose your job. ","Believe someone's statement, without proof. ","Provide permission to proceed. "],"To lose your job. "),
    Question	("	Go belly up 	",["Demonstrating talent and ability that will lead to success. ","Fail completely. ","Young man idolised for a great skill, typically in sport. ","Large sum of money given to someone when they retire from a company. "],"Fail completely. "),
    Question	("	Golden opportunity 	",["The alternative solution may seem better even if that isn't always the case. ","A very good opportunity that may never present itself again. ","Give someone money in order to persuade them to do something dishonest. ","Ability to make plants grow or be good at gardening. "],"A very good opportunity that may never present itself again. "),
    Question	("	Green with envy 	",["Unclear or undefined. ","Extremely jealous or full of envy. ","Continuing to do something in a very difficult situation. ","Without sentiment or sympathy for anyone. "],"Extremely jealous or full of envy. "),
    Question	("	Hard time 	",["Possessing a determination to achieve something. ","Something that is difficult or to suffer hardship. ","Having unrealistic or impractical ideas. ","Very much in love with someone. "],"Something that is difficult or to suffer hardship. "),
    Question	("	Hear it on the grapevine 	",["Having good intentions, even if the results may not be impressive. ","Hear something through informal or unofficial means, like gossip. ","When desirable things, such as money or happiness, are temporary. ","When something should have been done already and is overdue. "],"Hear something through informal or unofficial means, like gossip. "),
    Question	("	Hit the big time 	",["Begin studying hard. ","To become successful. ","Do or say something exactly right. ","Act quickly and without thinking in reaction to an unexpected event. "],"To become successful. "),
    Question	("	Hit the road 	",["Go to bed. ","Begin travelling or leave. ","Have responsibility for something or care about someone while others are away or out. ","Someone that is trustworthy and honest. "],"Begin travelling or leave. "),
    Question	("	Hot potato 	",["When someone really needs something – their last chance. ","Speak of a current issue which many people are talking about and which is usually disputed. ","Everything will happen when it is supposed to or at the appropriate time. ","Taking as long as you want to complete something or completing something at your own pace. "],"Speak of a current issue which many people are talking about and which is usually disputed. "),
    Question	("	In someone's black book 	",["Something that is assured or a guaranteed success. ","Be in disgrace or disfavour with someone. ","In profit. ","Something that happens very quickly. "],"Be in disgrace or disfavour with someone. "),
    Question	("	In the heat of the moment 	",["Between two events or something that is temporary. ","Overwhelmed by what is happening in the moment. ","Over a period of time. ","Just before it is too late. "],"Overwhelmed by what is happening in the moment. "),
    Question	("	In the red 	",["When something happens fortuitously or when given an unexpected opportunity. ","In debt with your bank. To have a negative bank balance or to owe money to the bank. ","When something unlucky happens that would not normally have happened. ","Have the same ideas and be in agreement with someone else. "],"In debt with your bank. To have a negative bank balance or to owe money to the bank. "),
    Question	("	It takes two to tango 	",["Strong impulse to travel or go somewhere. ","Actions or communications need more than one person. ","Judge something primarily on appearance. ","Join a popular trend or activity. "],"Actions or communications need more than one person. "),
    Question	("	Keep something at bay 	",["Maintaining an outward show of prosperity or well-being while hiding your difficulties. ","Keep something away or prevent something from happening. ","Being constantly aware of current developments. ","Not knowing the secrets or truth. "],"Keep something away or prevent something from happening. "),
    Question	("	Kill time 	",["Accomplish two different things at the same time. ","Do something whilst waiting. ","Overwhelming victory. ","The final problem in a series of problems that leads to a bad thing happening. "],"Do something whilst waiting. "),
    Question	("	Laugh a minute 	",["Learn something by memorising it without thought to what is being learnt. ","Someone or something that is very funny. ","Memorise so well, that it can be written or recited without thinking. ","Learn how to do a job or task properly. "],"Someone or something that is very funny. "),
    Question	("	Lemon 	",["Prove that you can afford something. ","Leave a situation undisturbed, since it would otherwise result in trouble or complications. ","New vehicle that has many faults. ","Failing to obtain or retain a good opportunity. "],"New vehicle that has many faults. "),
    Question	("	Let the cat out of the bag 	",["Trying to regain confidence after a defeat. ","Very fast. ","Share information that was previously concealed. ","Someone is stupid or lacking intelligence. "],"Share information that was previously concealed. "),
    Question	("	Like clockwork 	",["Do something fast or energetic, as if it were the last opportunity to do so. ","Being well organised in preparation for something. ","Happens at very regular times or intervals without fail. ","Spending more than you can afford. "],"Happens at very regular times or intervals without fail. "),
    Question	("	Living in an ivory tower 	",["Having very little income. ","Far-reaching power of the authorities. ","Living a lifestyle that saves or obscures you from real world issues. ","Not seen since long ago. "],"Living a lifestyle that saves or obscures you from real world issues. "),
    Question	("	Look on the bright side 	",["Start feeling love towards someone the first time you see them. ","Making an excessive display of affection. ","View an unpleasant situation in a positive light. ","Tight feeling in the through because of an emotion like sadness, pride or gratitude. "],"View an unpleasant situation in a positive light. "),
    Question	("	Make a long story short 	",["Something that makes me very happy or satisfies me. ","Circumstances causing total success or total failure. ","Come to the point without superfluous or unnecessary details. ","Be satisfactory or at an accepted level. "],"Come to the point without superfluous or unnecessary details. "),
    Question	("	Make time 	",["Something that makes you feel disgusted or nervous. ","Attempting to succeed at something. ","Find time to do something as a priority. ","Completing something faster than expected. "],"Find time to do something as a priority. "),
    Question	("	Making headway 	",["Relationship that is likely to be happy and successful. ","Despite one's approach seeming random, there actually is structure to it. ","Making progress in what you are trying to do. ","Happens very quickly. "],"Making progress in what you are trying to do. "),
    Question	("	Miss the boat 	",["Mischievous or deceitful behaviour. ","A very long period of time. ","Miss a chance or opportunity. ","Anything that can go wrong will go wrong. "],"Miss a chance or opportunity. "),
    Question	("	Never in a million years 	",["The belief it is better to do something right away instead of waiting. ","Start something right away, otherwise it won't be finished on time. ","Will never happen. ","Not delaying in getting something done. "],"Will never happen. "),
    Question	("	Not letting moss grow over 	",["Lacking intelligence. ","Occasionally. ","Doing something now or without delay. ","Something that should be done now or it will never be done. "],"Doing something now or without delay. "),
    Question	("	Off colour 	",["Crazy; demented; out of one's mind; in a confused or befuddled state of mind; senile. ","Something that is immediately successful or has begun well. ","Unwell. ","Person with a lot of experience in something. "],"Unwell. "),
    Question	("	Old school 	",["When someone understands the situation well or is doing well. ","Thinking or talking about something constantly. ","Holding ideas that were popular and important in the past but which are no longer so. ","Relationship experiencing problems. "],"Holding ideas that were popular and important in the past but which are no longer so. "),
    Question	("	On time 	",["Happens very rarely or once in a lifetime. ","Something that happened a long time ago. ","Not being late or something happening at the expected time. ","The truth, answer or result, will be revealed at some future point. "],"Not being late or something happening at the expected time. "),
    Question	("	Out of the blue 	",["No longer in debt. ","No time left to do something or a set time has been reached. ","Appear suddenly from nowhere and without warning. ","Go out and have a really good time at a party. "],"Appear suddenly from nowhere and without warning. "),
    Question	("	Pass with flying colours 	",["A way of asking what someone is thinking. ","Visual presentations are far more descriptive than words. ","Pass with a high score. ","A job, task or other activity that is easy or simple. "],"Pass with a high score. "),
    Question	("	Pitch black 	",["A position that provides you all the success and happiness you want. ","Propose marriage to someone. ","Very dark with zero or almost zero visibility. ","Hypocritically criticise or accuse someone else is as guilty as the person criticising. "],"Very dark with zero or almost zero visibility. "),
    Question	("	Pressed for time 	",["Very proud ","Terminate or discontinue something. ","Being rushed or not having enough time to complete something. ","Deceive someone into thinking well of them. "],"Being rushed or not having enough time to complete something. "),
    Question	("	Pulling out all the stops 	",["Performing beyond your ability. ","Temporary infatuation between young people. ","Doing everything you can to make something happen. ","Write down for confirmation or evidence. "],"Doing everything you can to make something happen. "),
    Question	("	Put your thinking cap on 	",["Becoming very rich whilst starting very poor. ","Raining very heavily. ","Engage your mind and think in a serious manner. ","Accept defeat and surrender to the other party. "],"Engage your mind and think in a serious manner. "),
    Question	("	Raring to go 	",["Exhausting and repetitive routine. ","Signal or indication that something is not working properly of correctly. ","Being very eager or enthusiastic about the idea. ","Unimportant matter that misleads and draws attention away. "],"Being very eager or enthusiastic about the idea. "),
    Question	("	Red hot 	",["Embarrassed. ","Set of rules and/or regulations that slow or stop progress. ","New and exciting, creating much demand. ","Journey that leaves late in the night and arrives early in the morning. "],"New and exciting, creating much demand. "),
    Question	("	Road hog 	",["Greet a person with great respect and give them a big, warm welcome. ","Being successful as something without difficulty. ","Dangerous driver. ","Do something quickly or in a way that allow time for other things. "],"Dangerous driver. "),
    Question	("	School of hard knocks 	",["Particular philosophy or way of thinking about something. ","Very basic or foolish mistake. ","Learning through difficult experiences, as opposed to formal, classroom education. ","Two or more people agree on something. "],"Learning through difficult experiences, as opposed to formal, classroom education. "),
    Question	("	Seeing red 	",["Persuade people to go against their best interests or to accept something unnecessary. ","The expected duration of lifespan of something (typically food, drink or medicine). ","React with uncontrollable rage. ","Raising hands to vote about something. "],"React with uncontrollable rage. "),
    Question	("	Shown the red card 	",["Film industry ","Line of people with one person standing behind another. ","Fail or succeed. ","Dismissed or told to leave. "],"Dismissed or told to leave. "),
    Question	("	Sinking teeth into something 	",["Unable or unwilling choose or make a decision. ","Not go to school when you should. ","Person who has put money into a business or venture but who is not involved in running it. ","Doing something with a lot of energy and enthusiasm. "],"Doing something with a lot of energy and enthusiasm. "),
    Question	("	Slice of the pie 	",["A big success. ","Having too much to do. ","Something is certain to happen but it isn't known when exactly. ","Share of something, such as money, profits, etc. "],"Share of something, such as money, profits, etc. "),
    Question	("	Sour grapes 	",["Suddenly disrupt something by introducing something unexpected or unwanted. ","When the person you have just been talking about arrives. ","Express a reaction without words. ","Pretending to dislike something you cannot have. "],"Pretending to dislike something you cannot have. "),
    Question	("	Spill the beans 	",["Maintaining your position ","Something that lasts or continues to work well for a long time. ","Take the credit for something someone else did. ","Reveal a secret. "],"Reveal a secret. "),

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
