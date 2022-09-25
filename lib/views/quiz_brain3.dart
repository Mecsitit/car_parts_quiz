import 'package:Aussi_slang_game_dictionerry/widgets/question.dart';
import 'dart:math';


class QuizBrain3 {int _questionNumber = Random().nextInt(80);
List<int> _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,];






List<Question> _questionBank = [Question	("	Penny for your thoughts 	",["Visual presentations are far more descriptive than words. ","A job, task or other activity that is easy or simple. ","A way of asking what someone is thinking. ","Very dark with zero or almost zero visibility. "],"A way of asking what someone is thinking. "),
    Question	("	Place in the sun 	",["Propose marriage to someone. ","Hypocritically criticise or accuse someone else is as guilty as the person criticising. ","A position that provides you all the success and happiness you want. ","Being rushed or not having enough time to complete something. "],"A position that provides you all the success and happiness you want. "),
    Question	("	Proud as a peacock 	",["Terminate or discontinue something. ","Deceive someone into thinking well of them. ","Very proud ","Doing everything you can to make something happen. "],"Very proud "),
    Question	("	Punch above one's weight 	",["Temporary infatuation between young people. ","Write down for confirmation or evidence. ","Performing beyond your ability. ","Engage your mind and think in a serious manner. "],"Performing beyond your ability. "),
    Question	("	Rags to riches 	",["Raining very heavily. ","Accept defeat and surrender to the other party. ","Becoming very rich whilst starting very poor. ","Being very eager or enthusiastic about the idea. "],"Becoming very rich whilst starting very poor. "),
    Question	("	Rat race 	",["Signal or indication that something is not working properly of correctly. ","Unimportant matter that misleads and draws attention away. ","Exhausting and repetitive routine. ","New and exciting, creating much demand. "],"Exhausting and repetitive routine. "),
    Question	("	Red in the face 	",["Set of rules and/or regulations that slow or stop progress. ","Journey that leaves late in the night and arrives early in the morning. ","Embarrassed. ","Dangerous driver. "],"Embarrassed. "),
    Question	("	Roll out the red carpet 	",["Being successful as something without difficulty. ","Do something quickly or in a way that allow time for other things. ","Greet a person with great respect and give them a big, warm welcome. ","Learning through difficult experiences, as opposed to formal, classroom education. "],"Greet a person with great respect and give them a big, warm welcome. "),
    Question	("	School of thought 	",["Very basic or foolish mistake. ","Two or more people agree on something. ","Particular philosophy or way of thinking about something. ","React with uncontrollable rage. "],"Particular philosophy or way of thinking about something. "),
    Question	("	Sell ice to Eskimos 	",["The expected duration of lifespan of something (typically food, drink or medicine). ","Raising hands to vote about something. ","Persuade people to go against their best interests or to accept something unnecessary. ","Fail or succeed. "],"Persuade people to go against their best interests or to accept something unnecessary. "),
    Question	("	Silver screen 	",["Line of people with one person standing behind another. ","Fail or succeed. ","Doing something with a lot of energy and enthusiasm. ","Film industry "],"Film industry "),
    Question	("	Sit on the fence 	",["Not go to school when you should. ","Person who has put money into a business or venture but who is not involved in running it. ","Share of something, such as money, profits, etc. ","Unable or unwilling choose or make a decision. "],"Unable or unwilling choose or make a decision. "),
    Question	("	Smash hit 	",["Having too much to do. ","Something is certain to happen but it isn't known when exactly. ","Pretending to dislike something you cannot have. ","A big success. "],"A big success. "),
    Question	("	Spanner in the works 	",["When the person you have just been talking about arrives. ","Express a reaction without words. ","Reveal a secret. ","Suddenly disrupt something by introducing something unexpected or unwanted. "],"Suddenly disrupt something by introducing something unexpected or unwanted. "),
    Question	("	Standing ground 	",["Something that lasts or continues to work well for a long time. ","Take the credit for something someone else did. ","Not showing emotions. ","Maintaining your position "],"Maintaining your position "),
    Question	("	Storm in a teacup 	",["From the authoritative source. ","Not changed for a very long time, when everything else around has. ","Accepting something humiliating or embarrassing. ","Exaggerate a problem. "],"Exaggerate a problem. "),
    Question	("	Sweet tooth 	",["Deal with things as and when they happen. ","Not to take what someone says too seriously. Be sceptical about something. ","Something happens to you, or is done to you, that you have done to someone else. ","Liking for sweet-tasting foods. "],"Liking for sweet-tasting foods. "),
    Question	("	Teacher's pet 	",["The top level of a profession ","When an important decision is made or the truth about something is revealed. ","A particular opportunity has passed and is no longer available. ","Teacher's favourite student. "],"Teacher's favourite student. "),
    Question	("	The time is ripe 	",["Adjusting quickly to change and making fast decisions. ","These or modern times. ","Very pleased, thrilled or delighted about something. ","The right or most opportune moment to do something. "],"The right or most opportune moment to do something. "),
    Question	("	Tie the knot 	",["Do something repeatedly ","When time passes quickly. ","Stop what you are doing and start doing something else. ","Get married. "],"Get married. "),
    Question	("	Time heals all wounds (or time is a great healer) 	",["Time is a valuable commodity. Payment is needed before doing something. ","When meeting a deadline is very important or critical. ","A time when someone is enjoying themselves. ","Feelings of hurt (usually emotional) will go away after some time has passed. "],"Feelings of hurt (usually emotional) will go away after some time has passed. "),
    Question	("	Time on one's hands (or side) 	",["Difficulty in expressing yourself because of nervousness or embarrassment. ","Too many people telling others what to do. ","When someone doesn't have enough to do. ","When you can afford to wait before doing or achieving something. "],"When you can afford to wait before doing or achieving something. "),
    Question	("	Top banana 	",["Most important person. ","Very determined person. ","Clever or expert way of doing something. ","Most important person in a group. "],"Most important person in a group. "),
    Question	("	True colours 	",["Reverse something or go back to a time in the past. ","Daily life and work where you learn more than you would through formal education. ","Something will never happen, no matter how hard or long you try for it to. ","Someone's actual character. "],"Someone's actual character. "),
    Question	("	Up in smoke 	",["Waiting for an opportunity to take action. ","Leave a partner and end the relationship. ","Doing something with no purpose. ","Something that ends before getting a result. "],"Something that ends before getting a result. "),
    Question	("	Well-oiled machine 	",["Enjoying something thoroughly. ","In a state of great fear or anxiety. ","Officer worker. ","Unit of people or a group of things working well together. "],"Unit of people or a group of things working well together. "),
    Question	("	White elephant 	",["Little or harmless lie told to be polite and avoid hurting someone's feelings. ","Cover up or gloss over faults. ","Everything. All of it. ","Expensive item that's costly to maintain and not particularly useful. "],"Expensive item that's costly to maintain and not particularly useful. "),
    Question	("	With bells on 	",["Imaginary prize for the last person in a race. ","Works very well or as expected. ","Would never like to do something. ","When you are delighted and eager to go somewhere. "],"When you are delighted and eager to go somewhere. "),
    Question	("	Year in, year out 	",["Coward ","People used to doing things a certain way are often unable to change their ways. ","Not knowing the answer. ","Happens every year for many years in a row. "],"Happens every year for many years in a row. "),
    Question	("	Add insult to injury 	",["To further a loss with mockery or indignity; to worsen an unfavourable situation. ","A time when after which programmes for older audiences may be aired on TV. ","Being rushed and having little time to complete something. ","Something that happens early or before it is supposed to. "],"To further a loss with mockery or indignity; to worsen an unfavourable situation. "),
    Question	("	All ears 	",["Awaiting an explanation. ","Very expensive or costly. A large amount of money. ","At any time of the day or night ","Will happen soon. "],"Awaiting an explanation. "),
    Question	("	As time goes by 	",["The passing of one moment to the next. ","Without any hesitation; instantly. ","An approach that uses traditional ideas that have previously worked. ","When an attempt fails and it's time to start all over. "],"The passing of one moment to the next. "),
    Question	("	Bad apple 	",["Troublemaker or undesirable person in a group. ","It is up to you to make the next decision or take the next step. ","Looking in the wrong place. Accusing the wrong person. ","Be happy when a person leaves. "],"Troublemaker or undesirable person in a group. "),
    Question	("	Beat around the bush 	",["Avoiding the main topic. Not speaking directly about the issue. ","Do something quickly before it's too late. ","Carrying and idea that's constantly in your thoughts. ","Being old-fashioned. "],"Avoiding the main topic. Not speaking directly about the issue. "),
    Question	("	Bells and whistles 	",["Lots of desirable features. ","Enjoying the advantage of two things simultaneously. ","A good invention or innovation. A good idea or plan. ","It is better to do something late than not at all. "],"Lots of desirable features. "),
    Question	("	Bide one's time 	",["Waiting for further developments before taking action or making decisions. ","Influential person ","Better to be satisfied with what you have than risk losing it by trying to get something better. ","To take on a task that is way too big. "],"Waiting for further developments before taking action or making decisions. "),
    Question	("	Black and blue 	",["Badly bruised. ","Take everything into consideration and over simply. Judge everything good or bad. ","Very dark and hard to see. ","Bruise around the eye. "],"Badly bruised. "),
    Question	("	Black market 	",["Where goods are illegally bought and sold for profit. ","Darken by turning off or dimming the lights. Lose consciousness. ","Undesirable member of a group. ","Exclude or ostracise someone socially. Reject someone. "],"Where goods are illegally bought and sold for profit. "),
    Question	("	Blacklist 	",["Exclude someone. ","Extort or take money from someone by threatening to use their secrets against them. ","Something good that isn't recognised as such at first. ","Pre-arranged social interaction between people who have never met. "],"Exclude someone. "),
    Question	("	Blood red 	",["Description of something with a deep red colour. ","Something that requires a lot of effort and hard work. ","Suddenly get very angry, perhaps over something unexpected. ","A plan or project that suddenly fails. "],"Description of something with a deep red colour. "),
    Question	("	Blue blood 	",["From noble, aristocratic or wealthy family. ","Working in a manual labour job. ","Try hard to win an agreement but usually unsuccessful. ","Superior quality or distinction. The best of a group. "],"From noble, aristocratic or wealthy family. "),
    Question	("	Bolt from the blue 	",["Unexpected bad news. ","Someone who reads a lot. ","Born into a rich and affluent family. ","A plan or project that fails. "],"Unexpected bad news. "),
    Question	("	Brainstorm 	",["Develop or think of new ideas. ","Person that is the primary source of income for a family. ","Earn a living. ","When something is lucky or successful but undeserving. "],"Develop or think of new ideas. "),
    Question	("	Buckle down 	",["Working hard with determination and full attention. ","Pregnant. ","To work late into the night, alluding to the time before electric lighting. ","Flatter someone, usually because you want something from them. "],"Working hard with determination and full attention. "),
    Question	("	By degrees 	",["Something happens of develops gradually or little by little. ","Only just succeed. ","Stop doing something for a while or until the next day (or night). ","Deciding to end something. "],"Something happens of develops gradually or little by little. "),
    Question	("	Carry the torch for 	",["Having string feelings for someone who cannot be yours. ","Dependable source of income. ","Thief who climbs into buildings. ","When it is inconvenient. "],"Having string feelings for someone who cannot be yours. "),
    Question	("	Catch someone red-handed 	",["Catch someone in the act of committing a crime or doing something they shouldn't. ","Deciding to do something even though the chances of success are slim or unknown. ","Try to achieve something that is very difficult, impossible or very desirable. ","Spend a lot of time and energy but achieve nothing. "],"Catch someone in the act of committing a crime or doing something they shouldn't. "),
    Question	("	Cheesy 	",["Tacky, silly, inauthentic or cheap. ","Record the time of arrival and the time of departure. ","A comment that is true and makes you uncomfortable. ","Pay no attention to. "],"Tacky, silly, inauthentic or cheap. "),
    Question	("	Coming of age 	",["When something develops completely and reached maturity. When a child becomes an adult. ","Spoil the person's chance of success. ","Someone who copies the work of another. ","When something is very expensive. "],"When something develops completely and reached maturity. When a child becomes an adult. "),
    Question	("	Couch potato 	",["Lazy person who watches too much TV. ","Complete a lot of work or a wide range of things. ","Very early in the morning. The first moments of sunrise. ","Deal with a problem if and when it becomes necessary, not before. "],"Lazy person who watches too much TV. "),
    Question	("	Crunch time 	",["When an important decision needs to be made by. ","Complain about a loss from the past. ","Being Inquisitive can lead you into an unpleasant or dangerous situation. ","When something is done quickly, and typically badly, to save money. "],"When an important decision needs to be made by. "),
    Question	("	Cut one's own throat 	",["Doing something that will cause your own failure or downfall. ","To succeed; to come up to expectations; adequate enough to compete or participate. ","Getting to the point. ","Part of a usual routine. "],"Doing something that will cause your own failure or downfall. "),
    Question	("	Days are numbered 	",["Expected to be in a role or to die soon. ","Plan or event that has failed or is certain to fail and therefore not worth discussing. ","Plan or project that has ceased to function and is not expected to re-activate. ","People or things that are no longer useful or necessary. "],"Expected to be in a role or to die soon. "),
    Question	("	Deep down 	",["Describing what a person really feels deep inside them ","Do what is expected or required. ","Spend time in prison. ","A very long period of time. "],"Describing what a person really feels deep inside them "),
    Question	("	Donkey's years 	",["Don't make plans for something that might not happen. ","A very long period of time. ","You are not very good at something. You could definitely not do it professionally. ","Don't make everything dependent on only one thing. "],"A very long period of time. "),
    Question	("	Double date 	",["When you are extremely desperate you need to take drastic actions. ","Social interaction that involves two couples. ","Get no response from someone when you ask them a question or to have no answer yourself. ","Stop attending school before it is time. "],"Social interaction that involves two couples. "),
    Question	("	Dwell on the past 	",["Enthusiastic and hard worker. ","Thinking too much about something that happened in the past. ","Very simple or easy. ","Being so enthusiastic and passionate about something that you think about it all the time. "],"Thinking too much about something that happened in the past. "),
    Question	("	Egg head 	",["Enough space to move or work in. ","Studious and academic person. ","At the very last minute or just in time. ","The show has come to an end. It's all over. "],"Studious and academic person. "),
    Question	("	Every cloud has a silver lining 	",["Investigating or examining every option. ","Be optimistic, even difficult times will lead to better days. Good can come from a bad situation. ","Tending to attract attention. ","Start feeling love towards someone. "],"Be optimistic, even difficult times will lead to better days. Good can come from a bad situation. "),
    Question	("	Far cry from 	",["Feeling depressed or disconnected. ","Very different from. ","Feeling unwell. ","When a feeling is very intense and exciting. "],"Very different from. "),
    Question	("	Fill in the blanks 	",["The opportunity is afforded to the first to arrive or present themselves. ","Supply missing words or information. ","Being the first one to make a start at something ","Feeling uncomfortable in unfamiliar surroundings "],"Supply missing words or information. "),
    Question	("	Foot in the door 	",["An action or state will continue into the future but is temporary. ","Small but good start with the possibility of a bright future. ","From this time forward. ","Occasionally or not very often. "],"Small but good start with the possibility of a bright future. "),
    Question	("	Full of beans 	",["Very happy and full of energy. ","Excited or very energetic and lively. ","To lose your job. ","Putting a plan or idea into action. "],"Excited or very energetic and lively. "),
    Question	("	Give the benefit of the doubt 	",["Provide permission to proceed. ","Believe someone's statement, without proof. ","Fail completely. ","Demonstrating talent and ability that will lead to success. "],"Believe someone's statement, without proof. "),
    Question	("	Golden boy 	",["Large sum of money given to someone when they retire from a company. ","Young man idolised for a great skill, typically in sport. ","A very good opportunity that may never present itself again. ","The alternative solution may seem better even if that isn't always the case. "],"Young man idolised for a great skill, typically in sport. "),
    Question	("	Grease someone's palm 	",["Ability to make plants grow or be good at gardening. ","Give someone money in order to persuade them to do something dishonest. ","Extremely jealous or full of envy. ","Unclear or undefined. "],"Give someone money in order to persuade them to do something dishonest. "),
    Question	("	Hanging on by fingernails 	",["Without sentiment or sympathy for anyone. ","Continuing to do something in a very difficult situation. ","Something that is difficult or to suffer hardship. ","Possessing a determination to achieve something. "],"Continuing to do something in a very difficult situation. "),
    Question	("	Head in the clouds 	",["Very much in love with someone. ","Having unrealistic or impractical ideas. ","Hear something through informal or unofficial means, like gossip. ","Having good intentions, even if the results may not be impressive. "],"Having unrealistic or impractical ideas. "),
    Question	("	Here today, gone tomorrow 	",["When something should have been done already and is overdue. ","When desirable things, such as money or happiness, are temporary. ","To become successful. ","Begin studying hard. "],"When desirable things, such as money or happiness, are temporary. "),
    Question	("	Hit the nail on the head 	",["Act quickly and without thinking in reaction to an unexpected event. ","Do or say something exactly right. ","Begin travelling or leave. ","Go to bed. "],"Do or say something exactly right. "),
    Question	("	Hold the fort 	",["Someone that is trustworthy and honest. ","Have responsibility for something or care about someone while others are away or out. ","Speak of a current issue which many people are talking about and which is usually disputed. ","When someone really needs something – their last chance. "],"Have responsibility for something or care about someone while others are away or out. "),
    Question	("	In due course 	",["Taking as long as you want to complete something or completing something at your own pace. ","Everything will happen when it is supposed to or at the appropriate time. ","Be in disgrace or disfavour with someone. ","Something that is assured or a guaranteed success. "],"Everything will happen when it is supposed to or at the appropriate time. "),
    Question	("	In the black 	",["Something that happens very quickly. ","In profit. ","Overwhelmed by what is happening in the moment. ","Between two events or something that is temporary. "],"In profit. "),
    Question	("	In the long run 	",["Just before it is too late. ","Over a period of time. ","In debt with your bank. To have a negative bank balance or to owe money to the bank. ","When something happens fortuitously or when given an unexpected opportunity. "],"Over a period of time. "),
    Question	("	In the wrong place at the wrong time 	",["Have the same ideas and be in agreement with someone else. ","When something unlucky happens that would not normally have happened. ","Actions or communications need more than one person. ","Strong impulse to travel or go somewhere. "],"When something unlucky happens that would not normally have happened. "),
    Question	("	Judge a book by its cover 	",["Join a popular trend or activity. ","Judge something primarily on appearance. ","Keep something away or prevent something from happening. ","Maintaining an outward show of prosperity or well-being while hiding your difficulties. "],"Judge something primarily on appearance. "),
    Question	("	Keeping your finger on the pulse 	",["Not knowing the secrets or truth. ","Being constantly aware of current developments. ","Do something whilst waiting. ","Accomplish two different things at the same time. "],"Being constantly aware of current developments. "),
    Question	("	Landslide victory 	",["The final problem in a series of problems that leads to a bad thing happening. ","Overwhelming victory. ","Someone or something that is very funny. ","Learn something by memorising it without thought to what is being learnt. "],"Overwhelming victory. "),
    Question	("	Learn something off by heart 	",["Learn how to do a job or task properly. ","Memorise so well, that it can be written or recited without thinking. ","Leave a situation undisturbed, since it would otherwise result in trouble or complications. ","Failing to obtain or retain a good opportunity. "],"Memorise so well, that it can be written or recited without thinking. "),
    Question	("	Let sleeping dogs lie 	",["Failing to obtain or retain a good opportunity. ","Share information that was previously concealed. ","Leave a situation undisturbed, since it would otherwise result in trouble or complications. ","Trying to regain confidence after a defeat. "],"Leave a situation undisturbed, since it would otherwise result in trouble or complications. "),

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
  void reset() {_questionNumber = Random().nextInt(80);
  _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,];
  }
}
