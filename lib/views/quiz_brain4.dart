import 'package:Aussi_slang_game_dictionerry/widgets/question.dart';
import 'dart:math';


class QuizBrain4 {int _questionNumber = Random().nextInt(80);
List<int> _questionNum=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,];






List<Question> _questionBank = [Question	("	Lightning fast 	",["Someone is stupid or lacking intelligence. ","Happens at very regular times or intervals without fail. ","Very fast. ","Do something fast or energetic, as if it were the last opportunity to do so. "],"Very fast. "),
    Question	("	Lining up all the ducks in a row 	",["Spending more than you can afford. ","Living a lifestyle that saves or obscures you from real world issues. ","Being well organised in preparation for something. ","Having very little income. "],"Being well organised in preparation for something. "),
    Question	("	Long arm of the law 	",["Not seen since long ago. ","View an unpleasant situation in a positive light. ","Far-reaching power of the authorities. ","Start feeling love towards someone the first time you see them. "],"Far-reaching power of the authorities. "),
    Question	("	Lovey-dovey 	",["Tight feeling in the through because of an emotion like sadness, pride or gratitude. ","Come to the point without superfluous or unnecessary details. ","Making an excessive display of affection. ","Something that makes me very happy or satisfies me. "],"Making an excessive display of affection. "),
    Question	("	Make or break 	",["Be satisfactory or at an accepted level. ","Find time to do something as a priority. ","Circumstances causing total success or total failure. ","Something that makes you feel disgusted or nervous. "],"Circumstances causing total success or total failure. "),
    Question	("	Making a go of it 	",["Completing something faster than expected. ","Making progress in what you are trying to do. ","Attempting to succeed at something. ","Relationship that is likely to be happy and successful. "],"Attempting to succeed at something. "),
    Question	("	Method to my madness 	",["Happens very quickly. ","Miss a chance or opportunity. ","Despite one's approach seeming random, there actually is structure to it. ","Mischievous or deceitful behaviour. "],"Despite one's approach seeming random, there actually is structure to it. "),
    Question	("	Month of Sundays 	",["Anything that can go wrong will go wrong. ","Will never happen. ","A very long period of time. ","The belief it is better to do something right away instead of waiting. "],"A very long period of time. "),
    Question	("	No time to lose 	",["Not delaying in getting something done. ","Doing something now or without delay. ","Start something right away, otherwise it won't be finished on time. ","Lacking intelligence. "],"Start something right away, otherwise it won't be finished on time. "),
    Question	("	Now and then (or again) 	",["Something that should be done now or it will never be done. ","Unwell. ","Occasionally. ","Crazy; demented; out of one's mind; in a confused or befuddled state of mind; senile. "],"Occasionally. "),
    Question	("	Off to a flying start 	",["Person with a lot of experience in something. ","Holding ideas that were popular and important in the past but which are no longer so. ","Something that is immediately successful or has begun well. ","When someone understands the situation well or is doing well. "],"Something that is immediately successful or has begun well. "),
    Question	("	On the brain 	",["Relationship experiencing problems. ","Not being late or something happening at the expected time. ","Thinking or talking about something constantly. ","Happens very rarely or once in a lifetime. "],"Thinking or talking about something constantly. "),
    Question	("	Once upon a time 	",["The truth, answer or result, will be revealed at some future point. ","Appear suddenly from nowhere and without warning. ","Something that happened a long time ago. ","No longer in debt. "],"Something that happened a long time ago. "),
    Question	("	Out of time 	",["Go out and have a really good time at a party. ","Pass with a high score. ","No time left to do something or a set time has been reached. ","A way of asking what someone is thinking. "],"No time left to do something or a set time has been reached. "),
    Question	("	Picture paints a thousand words 	",["A job, task or other activity that is easy or simple. ","Very dark with zero or almost zero visibility. ","Visual presentations are far more descriptive than words. ","A position that provides you all the success and happiness you want. "],"Visual presentations are far more descriptive than words. "),
    Question	("	Pop the question 	",["Hypocritically criticise or accuse someone else is as guilty as the person criticising. ","Being rushed or not having enough time to complete something. ","Propose marriage to someone. ","Very proud "],"Propose marriage to someone. "),
    Question	("	Pull the plug 	",["Deceive someone into thinking well of them. ","Doing everything you can to make something happen. ","Terminate or discontinue something. ","Performing beyond your ability. "],"Terminate or discontinue something. "),
    Question	("	Puppy love 	",["Write down for confirmation or evidence. ","Engage your mind and think in a serious manner. ","Temporary infatuation between young people. ","Becoming very rich whilst starting very poor. "],"Temporary infatuation between young people. "),
    Question	("	Raining cats and dogs 	",["Accept defeat and surrender to the other party. ","Being very eager or enthusiastic about the idea. ","Raining very heavily. ","Exhausting and repetitive routine. "],"Raining very heavily. "),
    Question	("	Red flag 	",["Unimportant matter that misleads and draws attention away. ","New and exciting, creating much demand. ","Signal or indication that something is not working properly of correctly. ","Embarrassed. "],"Signal or indication that something is not working properly of correctly. "),
    Question	("	Red tape 	",["Journey that leaves late in the night and arrives early in the morning. ","Dangerous driver. ","Set of rules and/or regulations that slow or stop progress. ","Greet a person with great respect and give them a big, warm welcome. "],"Set of rules and/or regulations that slow or stop progress. "),
    Question	("	Sail through something 	",["Do something quickly or in a way that allow time for other things. ","Learning through difficult experiences, as opposed to formal, classroom education. ","Being successful as something without difficulty. ","Particular philosophy or way of thinking about something. "],"Being successful as something without difficulty. "),
    Question	("	Schoolboy error 	",["Two or more people agree on something. ","React with uncontrollable rage. ","Very basic or foolish mistake. ","Persuade people to go against their best interests or to accept something unnecessary. "],"Very basic or foolish mistake. "),
    Question	("	Shelf life 	",["Raising hands to vote about something. ","Fail or succeed. ","The expected duration of lifespan of something (typically food, drink or medicine). ","Doing something with a lot of energy and enthusiasm. "],"The expected duration of lifespan of something (typically food, drink or medicine). "),
    Question	("	Single file 	",["Fail or succeed. ","Doing something with a lot of energy and enthusiasm. ","Unable or unwilling choose or make a decision. ","Line of people with one person standing behind another. "],"Line of people with one person standing behind another. "),
    Question	("	Skip class 	",["Person who has put money into a business or venture but who is not involved in running it. ","Share of something, such as money, profits, etc. ","A big success. ","Not go to school when you should. "],"Not go to school when you should. "),
    Question	("	Snowed under 	",["Something is certain to happen but it isn't known when exactly. ","Pretending to dislike something you cannot have. ","Suddenly disrupt something by introducing something unexpected or unwanted. ","Having too much to do. "],"Having too much to do. "),
    Question	("	Speak of the devil 	",["Express a reaction without words. ","Reveal a secret. ","Maintaining your position ","When the person you have just been talking about arrives. "],"When the person you have just been talking about arrives. "),
    Question	("	Standing the test of time 	",["Take the credit for something someone else did. ","Not showing emotions. ","Exaggerate a problem. ","Something that lasts or continues to work well for a long time. "],"Something that lasts or continues to work well for a long time. "),
    Question	("	Straight from the horse's mouth 	",["Not changed for a very long time, when everything else around has. ","Accepting something humiliating or embarrassing. ","Liking for sweet-tasting foods. ","From the authoritative source. "],"From the authoritative source. "),
    Question	("	Take each day as it comes 	",["Not to take what someone says too seriously. Be sceptical about something. ","Something happens to you, or is done to you, that you have done to someone else. ","Teacher's favourite student. ","Deal with things as and when they happen. "],"Deal with things as and when they happen. "),
    Question	("	The big time 	",["When an important decision is made or the truth about something is revealed. ","A particular opportunity has passed and is no longer available. ","The right or most opportune moment to do something. ","The top level of a profession "],"The top level of a profession "),
    Question	("	Thinking on your feet 	",["These or modern times. ","Very pleased, thrilled or delighted about something. ","Get married. ","Adjusting quickly to change and making fast decisions. "],"Adjusting quickly to change and making fast decisions. "),
    Question	("	Time after time (time and time again) 	",["When time passes quickly. ","Stop what you are doing and start doing something else. ","Feelings of hurt (usually emotional) will go away after some time has passed. ","Do something repeatedly "],"Do something repeatedly "),
    Question	("	Time is money 	",["When meeting a deadline is very important or critical. ","A time when someone is enjoying themselves. ","When you can afford to wait before doing or achieving something. ","Time is a valuable commodity. Payment is needed before doing something. "],"Time is a valuable commodity. Payment is needed before doing something. "),
    Question	("	Tongue-tied 	",["Too many people telling others what to do. ","When someone doesn't have enough to do. ","Most important person in a group. ","Difficulty in expressing yourself because of nervousness or embarrassment. "],"Difficulty in expressing yourself because of nervousness or embarrassment. "),
    Question	("	Top dog 	",["Very determined person. ","Clever or expert way of doing something. ","Someone's actual character. ","Most important person. "],"Most important person. "),
    Question	("	Turn back the hands of time 	",["Daily life and work where you learn more than you would through formal education. ","Something will never happen, no matter how hard or long you try for it to. ","Something that ends before getting a result. ","Reverse something or go back to a time in the past. "],"Reverse something or go back to a time in the past. "),
    Question	("	Waiting in the wings 	",["Leave a partner and end the relationship. ","Doing something with no purpose. ","Unit of people or a group of things working well together. ","Waiting for an opportunity to take action. "],"Waiting for an opportunity to take action. "),
    Question	("	Whale of a time 	",["In a state of great fear or anxiety. ","Officer worker. ","Expensive item that's costly to maintain and not particularly useful. ","Enjoying something thoroughly. "],"Enjoying something thoroughly. "),
    Question	("	White lie 	",["Cover up or gloss over faults. ","Everything. All of it. ","When you are delighted and eager to go somewhere. ","Little or harmless lie told to be polite and avoid hurting someone's feelings. "],"Little or harmless lie told to be polite and avoid hurting someone's feelings. "),
    Question	("	Wooden spoon 	",["Works very well or as expected. ","Would never like to do something. ","Happens every year for many years in a row. ","Imaginary prize for the last person in a race. "],"Imaginary prize for the last person in a race. "),
    Question	("	Yellow-bellied 	",["People used to doing things a certain way are often unable to change their ways. ","Not knowing the answer. ","Expensive item that's costly to maintain and not particularly useful. ","Coward "],"Coward "),
    Question	("	After the watershed 	",["A time when after which programmes for older audiences may be aired on TV. ","Being rushed and having little time to complete something. ","Something that happens early or before it is supposed to. ","Awaiting an explanation. "],"A time when after which programmes for older audiences may be aired on TV. "),
    Question	("	An arm and a leg 	",["Very expensive or costly. A large amount of money. ","At any time of the day or night ","Will happen soon. ","The passing of one moment to the next. "],"Very expensive or costly. A large amount of money. "),
    Question	("	At the drop of a hat 	",["Without any hesitation; instantly. ","An approach that uses traditional ideas that have previously worked. ","When an attempt fails and it's time to start all over. ","Troublemaker or undesirable person in a group. "],"Without any hesitation; instantly. "),
    Question	("	Ball is in your court 	",["It is up to you to make the next decision or take the next step. ","Looking in the wrong place. Accusing the wrong person. ","Be happy when a person leaves. ","Avoiding the main topic. Not speaking directly about the issue. "],"It is up to you to make the next decision or take the next step. "),
    Question	("	Beat the clock 	",["Do something quickly before it's too late. ","Carrying and idea that's constantly in your thoughts. ","Being old-fashioned. ","Lots of desirable features. "],"Do something quickly before it's too late. "),
    Question	("	Best of both worlds 	",["Enjoying the advantage of two things simultaneously. ","A good invention or innovation. A good idea or plan. ","It is better to do something late than not at all. ","Waiting for further developments before taking action or making decisions. "],"Enjoying the advantage of two things simultaneously. "),
    Question	("	Big cheese 	",["Influential person ","Better to be satisfied with what you have than risk losing it by trying to get something better. ","To take on a task that is way too big. ","Badly bruised. "],"Influential person "),
    Question	("	Black and white 	",["Take everything into consideration and over simply. Judge everything good or bad. ","Very dark and hard to see. ","Bruise around the eye. ","Where goods are illegally bought and sold for profit. "],"Take everything into consideration and over simply. Judge everything good or bad. "),
    Question	("	Black out 	",["Darken by turning off or dimming the lights. Lose consciousness. ","Undesirable member of a group. ","Exclude or ostracise someone socially. Reject someone. ","Exclude someone. "],"Darken by turning off or dimming the lights. Lose consciousness. "),
    Question	("	Blackmail 	",["Extort or take money from someone by threatening to use their secrets against them. ","Something good that isn't recognised as such at first. ","Pre-arranged social interaction between people who have never met. ","Description of something with a deep red colour. "],"Extort or take money from someone by threatening to use their secrets against them. "),
    Question	("	Blood, sweat & tears 	",["Something that requires a lot of effort and hard work. ","Suddenly get very angry, perhaps over something unexpected. ","A plan or project that suddenly fails. ","From noble, aristocratic or wealthy family. "],"Something that requires a lot of effort and hard work. "),
    Question	("	Blue collar 	",["Working in a manual labour job. ","Try hard to win an agreement but usually unsuccessful. ","Superior quality or distinction. The best of a group. ","Unexpected bad news. "],"Working in a manual labour job. "),
    Question	("	Bookworm 	",["Someone who reads a lot. ","Born into a rich and affluent family. ","A plan or project that fails. ","Develop or think of new ideas. "],"Someone who reads a lot. "),
    Question	("	Bread-winner 	",["Person that is the primary source of income for a family. ","Earn a living. ","When something is lucky or successful but undeserving. ","Working hard with determination and full attention. "],"Person that is the primary source of income for a family. "),
    Question	("	Bun in the oven 	",["Pregnant. ","To work late into the night, alluding to the time before electric lighting. ","Flatter someone, usually because you want something from them. ","Something happens of develops gradually or little by little. "],"Pregnant. "),
    Question	("	By the skin of your teeth 	",["Only just succeed. ","Stop doing something for a while or until the next day (or night). ","Deciding to end something. ","Having string feelings for someone who cannot be yours. "],"Only just succeed. "),
    Question	("	Cash cow 	",["Dependable source of income. ","Thief who climbs into buildings. ","When it is inconvenient. ","Catch someone in the act of committing a crime or doing something they shouldn't. "],"Dependable source of income. "),
    Question	("	Chance one's arm 	",["Deciding to do something even though the chances of success are slim or unknown. ","Try to achieve something that is very difficult, impossible or very desirable. ","Spend a lot of time and energy but achieve nothing. ","Tacky, silly, inauthentic or cheap. "],"Deciding to do something even though the chances of success are slim or unknown. "),
    Question	("	Clock-in/clock-out 	",["Record the time of arrival and the time of departure. ","A comment that is true and makes you uncomfortable. ","Pay no attention to. ","When something develops completely and reached maturity. When a child becomes an adult. "],"Record the time of arrival and the time of departure. "),
    Question	("	Cook someone's goose 	",["Spoil the person's chance of success. ","Someone who copies the work of another. ","When something is very expensive. ","Lazy person who watches too much TV. "],"Spoil the person's chance of success. "),
    Question	("	Cover a lot of ground 	",["Complete a lot of work or a wide range of things. ","Very early in the morning. The first moments of sunrise. ","Deal with a problem if and when it becomes necessary, not before. ","When an important decision needs to be made by. "],"Complete a lot of work or a wide range of things. "),
    Question	("	Cry over spilt milk 	",["Complain about a loss from the past. ","Being Inquisitive can lead you into an unpleasant or dangerous situation. ","When something is done quickly, and typically badly, to save money. ","Doing something that will cause your own failure or downfall. "],"Complain about a loss from the past. "),
    Question	("	Cut the mustard 	",["To succeed; to come up to expectations; adequate enough to compete or participate. ","Getting to the point. ","Part of a usual routine. ","Expected to be in a role or to die soon. "],"To succeed; to come up to expectations; adequate enough to compete or participate. "),
    Question	("	Dead duck 	",["Plan or event that has failed or is certain to fail and therefore not worth discussing. ","Plan or project that has ceased to function and is not expected to re-activate. ","People or things that are no longer useful or necessary. ","Describing what a person really feels deep inside them "],"Plan or event that has failed or is certain to fail and therefore not worth discussing. "),
    Question	("	Deliver the goods 	",["Do what is expected or required. ","Spend time in prison. ","A very long period of time. ","Don't make plans for something that might not happen. "],"Do what is expected or required. "),
    Question	("	Don't count your chickens before they've hatched 	",["You are not very good at something. You could definitely not do it professionally. ","Don't make plans for something that might not happen. ","Don't make everything dependent on only one thing. ","Social interaction that involves two couples. "],"Don't make plans for something that might not happen. "),
    Question	("	Drastic times call for drastic measures 	",["Get no response from someone when you ask them a question or to have no answer yourself. ","When you are extremely desperate you need to take drastic actions. ","Stop attending school before it is time. ","Thinking too much about something that happened in the past. "],"When you are extremely desperate you need to take drastic actions. "),
    Question	("	Eager beaver 	",["Very simple or easy. ","Enthusiastic and hard worker. ","Being so enthusiastic and passionate about something that you think about it all the time. ","Studious and academic person. "],"Enthusiastic and hard worker. "),
    Question	("	Elbow room 	",["At the very last minute or just in time. ","Enough space to move or work in. ","The show has come to an end. It's all over. ","Be optimistic, even difficult times will lead to better days. Good can come from a bad situation. "],"Enough space to move or work in. "),
    Question	("	Explore all avenues 	",["Tending to attract attention. ","Investigating or examining every option. ","Start feeling love towards someone. ","Very different from. "],"Investigating or examining every option. "),
    Question	("	Feeling blue 	",["Feeling unwell. ","Feeling depressed or disconnected. ","When a feeling is very intense and exciting. ","Supply missing words or information. "],"Feeling depressed or disconnected. "),
    Question	("	First in, best dressed 	",["Being the first one to make a start at something ","The opportunity is afforded to the first to arrive or present themselves. ","Feeling uncomfortable in unfamiliar surroundings ","Small but good start with the possibility of a bright future. "],"The opportunity is afforded to the first to arrive or present themselves. "),
    Question	("	For the time being 	",["From this time forward. ","An action or state will continue into the future but is temporary. ","Occasionally or not very often. ","Excited or very energetic and lively. "],"An action or state will continue into the future but is temporary. "),
    Question	("	Full of the joys of spring 	",["To lose your job. ","Very happy and full of energy. ","Putting a plan or idea into action. ","Believe someone's statement, without proof. "],"Very happy and full of energy. "),
    Question	("	Give the green light 	",["Fail completely. ","Provide permission to proceed. ","Demonstrating talent and ability that will lead to success. ","Young man idolised for a great skill, typically in sport. "],"Provide permission to proceed. "),
    Question	("	Golden handshake 	",["A very good opportunity that may never present itself again. ","Large sum of money given to someone when they retire from a company. ","The alternative solution may seem better even if that isn't always the case. ","Give someone money in order to persuade them to do something dishonest. "],"Large sum of money given to someone when they retire from a company. "),
    Question	("	Green thumb 	",["Extremely jealous or full of envy. ","Ability to make plants grow or be good at gardening. ","Unclear or undefined. ","Continuing to do something in a very difficult situation. "],"Ability to make plants grow or be good at gardening. "),

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
