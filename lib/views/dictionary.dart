import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
class Dictionary extends StatefulWidget {
  //`createState()` will create the mutable state for this widget at
  //a given location in the tree.
  @override
  _DictionaryState createState() => _DictionaryState();


}

//Our Home state, the logic and internal state for a StatefulWidget.
class _DictionaryState extends State<Dictionary> {

  //A controller for an editable text field.
  //Whenever the user modifies a text field with an associated
  //TextEditingController, the text field updates value and the
  //controller notifies its listeners.
  var _searchview = new TextEditingController();

  bool _firstSearch = true;
  String _query = "";

  List<String> _nebulae;
  List<String> _filterList;
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

  BannerAd myBanner;

  @override
  void initState() {
    super.initState();
    _nebulae = new List<String>();
    _nebulae = [
      "	Acid test 	-	Proves the effectiveness of something. 	",
      "	Actions speak louder than words 	-	People's intentions can be judged better by what they do than what they say. 	",
      "	Add insult to injury 	-	To further a loss with mockery or indignity; to worsen an unfavourable situation. 	",
      "	After the watershed 	-	A time when after which programmes for older audiences may be aired on TV. 	",
      "	Against the clock 	-	Being rushed and having little time to complete something. 	",
      "	Ahead of time 	-	Something that happens early or before it is supposed to. 	",
      "	All ears 	-	Awaiting an explanation. 	",
      "	An arm and a leg 	-	Very expensive or costly. A large amount of money. 	",
      "	Around the clock 	-	At any time of the day or night 	",
      "	Around the corner 	-	Will happen soon. 	",
      "	As time goes by 	-	The passing of one moment to the next. 	",
      "	At the drop of a hat 	-	Without any hesitation; instantly. 	",
      "	Back to basics 	-	An approach that uses traditional ideas that have previously worked. 	",
      "	Back to the drawing board 	-	When an attempt fails and it's time to start all over. 	",
      "	Bad apple 	-	Troublemaker or undesirable person in a group. 	",
      "	Ball is in your court 	-	It is up to you to make the next decision or take the next step. 	",
      "	Barking up the wrong tree 	-	Looking in the wrong place. Accusing the wrong person. 	",
      "	Be glad to see the back of 	-	Be happy when a person leaves. 	",
      "	Beat around the bush 	-	Avoiding the main topic. Not speaking directly about the issue. 	",
      "	Beat the clock 	-	Do something quickly before it's too late. 	",
      "	Bee in one's bonnet 	-	Carrying and idea that's constantly in your thoughts. 	",
      "	Behind the times 	-	Being old-fashioned. 	",
      "	Bells and whistles 	-	Lots of desirable features. 	",
      "	Best of both worlds 	-	Enjoying the advantage of two things simultaneously. 	",
      "	Best thing since sliced bread 	-	A good invention or innovation. A good idea or plan. 	",
      "	Better late than never 	-	It is better to do something late than not at all. 	",
      "	Bide one's time 	-	Waiting for further developments before taking action or making decisions. 	",
      "	Big cheese 	-	Influential person 	",
      "	Bird in the hand is worth two in the bush 	-	Better to be satisfied with what you have than risk losing it by trying to get something better. 	",
      "	Bite off more than you can chew 	-	To take on a task that is way too big. 	",
      "	Black and blue 	-	Badly bruised. 	",
      "	Black and white 	-	Take everything into consideration and over simply. Judge everything good or bad. 	",
      "	Black as night 	-	Very dark and hard to see. 	",
      "	Black eye 	-	Bruise around the eye. 	",
      "	Black market 	-	Where goods are illegally bought and sold for profit. 	",
      "	Black out 	-	Darken by turning off or dimming the lights. Lose consciousness. 	",
      "	Black sheep 	-	Undesirable member of a group. 	",
      "	Blackball 	-	Exclude or ostracise someone socially. Reject someone. 	",
      "	Blacklist 	-	Exclude someone. 	",
      "	Blackmail 	-	Extort or take money from someone by threatening to use their secrets against them. 	",
      "	Blessing in disguise 	-	Something good that isn't recognised as such at first. 	",
      "	Blind date 	-	Pre-arranged social interaction between people who have never met. 	",
      "	Blood red 	-	Description of something with a deep red colour. 	",
      "	Blood, sweat & tears 	-	Something that requires a lot of effort and hard work. 	",
      "	Blow a fuse 	-	Suddenly get very angry, perhaps over something unexpected. 	",
      "	Blow up in the face 	-	A plan or project that suddenly fails. 	",
      "	Blue blood 	-	From noble, aristocratic or wealthy family. 	",
      "	Blue collar 	-	Working in a manual labour job. 	",
      "	Blue in the face 	-	Try hard to win an agreement but usually unsuccessful. 	",
      "	Blue ribbon 	-	Superior quality or distinction. The best of a group. 	",
      "	Bolt from the blue 	-	Unexpected bad news. 	",
      "	Bookworm 	-	Someone who reads a lot. 	",
      "	Born with a silver spoon in one's mouth 	-	Born into a rich and affluent family. 	",
      "	Bottom falls out 	-	A plan or project that fails. 	",
      "	Brainstorm 	-	Develop or think of new ideas. 	",
      "	Bread-winner 	-	Person that is the primary source of income for a family. 	",
      "	Bring home the bacon 	-	Earn a living. 	",
      "	Broken watch is right twice a day 	-	When something is lucky or successful but undeserving. 	",
      "	Buckle down 	-	Working hard with determination and full attention. 	",
      "	Bun in the oven 	-	Pregnant. 	",
      "	Burn the midnight oil 	-	To work late into the night, alluding to the time before electric lighting. 	",
      "	Butter up 	-	Flatter someone, usually because you want something from them. 	",
      "	By degrees 	-	Something happens of develops gradually or little by little. 	",
      "	By the skin of your teeth 	-	Only just succeed. 	",
      "	Call it a day (or night) 	-	Stop doing something for a while or until the next day (or night). 	",
      "	Calling time 	-	Deciding to end something. 	",
      "	Carry the torch for 	-	Having string feelings for someone who cannot be yours. 	",
      "	Cash cow 	-	Dependable source of income. 	",
      "	Cat burglar 	-	Thief who climbs into buildings. 	",
      "	Catch someone at a bad time 	-	When it is inconvenient. 	",
      "	Catch someone red-handed 	-	Catch someone in the act of committing a crime or doing something they shouldn't. 	",
      "	Chance one's arm 	-	Deciding to do something even though the chances of success are slim or unknown. 	",
      "	Chase rainbows 	-	Try to achieve something that is very difficult, impossible or very desirable. 	",
      "	Chase your tail 	-	Spend a lot of time and energy but achieve nothing. 	",
      "	Cheesy 	-	Tacky, silly, inauthentic or cheap. 	",
      "	Clock-in/clock-out 	-	Record the time of arrival and the time of departure. 	",
      "	Close to home 	-	A comment that is true and makes you uncomfortable. 	",
      "	Cold shoulder 	-	Pay no attention to. 	",
      "	Coming of age 	-	When something develops completely and reached maturity. When a child becomes an adult. 	",
      "	Cook someone's goose 	-	Spoil the person's chance of success. 	",
      "	Copycat 	-	Someone who copies the work of another. 	",
      "	Costs an arm and a leg 	-	When something is very expensive. 	",
      "	Couch potato 	-	Lazy person who watches too much TV. 	",
      "	Cover a lot of ground 	-	Complete a lot of work or a wide range of things. 	",
      "	Crack of dawn 	-	Very early in the morning. The first moments of sunrise. 	",
      "	Cross that bridge when you come to it 	-	Deal with a problem if and when it becomes necessary, not before. 	",
      "	Crunch time 	-	When an important decision needs to be made by. 	",
      "	Cry over spilt milk 	-	Complain about a loss from the past. 	",
      "	Curiosity killed the cat 	-	Being Inquisitive can lead you into an unpleasant or dangerous situation. 	",
      "	Cut corners 	-	When something is done quickly, and typically badly, to save money. 	",
      "	Cut one's own throat 	-	Doing something that will cause your own failure or downfall. 	",
      "	Cut the mustard 	-	To succeed; to come up to expectations; adequate enough to compete or participate. 	",
      "	Cut to the chase 	-	Getting to the point. 	",
      "	Day to day 	-	Part of a usual routine. 	",
      "	Days are numbered 	-	Expected to be in a role or to die soon. 	",
      "	Dead duck 	-	Plan or event that has failed or is certain to fail and therefore not worth discussing. 	",
      "	Dead in the water 	-	Plan or project that has ceased to function and is not expected to re-activate. 	",
      "	Dead wood 	-	People or things that are no longer useful or necessary. 	",
      "	Deep down 	-	Describing what a person really feels deep inside them 	",
      "	Deliver the goods 	-	Do what is expected or required. 	",
      "	Devil's Advocate 	-	To present a counter argument. 	",
      "	Do time (serve time) 	-	Spend time in prison. 	",
      "	Donkey's years 	-	A very long period of time. 	",
      "	Don't count your chickens before they've hatched 	-	Don't make plans for something that might not happen. 	",
      "	Don't give up the day job 	-	You are not very good at something. You could definitely not do it professionally. 	",
      "	Don't put all your eggs in one basket 	-	Don't make everything dependent on only one thing. 	",
      "	Double date 	-	Social interaction that involves two couples. 	",
      "	Drastic times call for drastic measures 	-	When you are extremely desperate you need to take drastic actions. 	",
      "	Drawing a blank 	-	Get no response from someone when you ask them a question or to have no answer yourself. 	",
      "	Dropout 	-	Stop attending school before it is time. 	",
      "	Dwell on the past 	-	Thinking too much about something that happened in the past. 	",
      "	Eager beaver 	-	Enthusiastic and hard worker. 	",
      "	Easy as ABC 	-	Very simple or easy. 	",
      "	Eat, sleep & breathe something 	-	Being so enthusiastic and passionate about something that you think about it all the time. 	",
      "	Egg head 	-	Studious and academic person. 	",
      "	Elbow room 	-	Enough space to move or work in. 	",
      "	Eleventh hour 	-	At the very last minute or just in time. 	",
      "	Elvis has left the building 	-	The show has come to an end. It's all over. 	",
      "	Every cloud has a silver lining 	-	Be optimistic, even difficult times will lead to better days. Good can come from a bad situation. 	",
      "	Explore all avenues 	-	Investigating or examining every option. 	",
      "	Eye-catching 	-	Tending to attract attention. 	",
      "	Fallen in love 	-	Start feeling love towards someone. 	",
      "	Far cry from 	-	Very different from. 	",
      "	Feeling blue 	-	Feeling depressed or disconnected. 	",
      "	Feeling under the weather 	-	Feeling unwell. 	",
      "	Fever pitch 	-	When a feeling is very intense and exciting. 	",
      "	Fill in the blanks 	-	Supply missing words or information. 	",
      "	First in, best dressed 	-	The opportunity is afforded to the first to arrive or present themselves. 	",
      "	First out of the gate 	-	Being the first one to make a start at something 	",
      "	Fish out of water 	-	Feeling uncomfortable in unfamiliar surroundings 	",
      "	Foot in the door 	-	Small but good start with the possibility of a bright future. 	",
      "	For the time being 	-	An action or state will continue into the future but is temporary. 	",
      "	From now on 	-	From this time forward. 	",
      "	From time to time 	-	Occasionally or not very often. 	",
      "	Full of beans 	-	Excited or very energetic and lively. 	",
      "	Full of the joys of spring 	-	Very happy and full of energy. 	",
      "	Getting sacked (or axed, or fired) 	-	To lose your job. 	",
      "	Getting the show on the road 	-	Putting a plan or idea into action. 	",
      "	Give the benefit of the doubt 	-	Believe someone's statement, without proof. 	",
      "	Give the green light 	-	Provide permission to proceed. 	",
      "	Go belly up 	-	Fail completely. 	",
      "	Going places 	-	Demonstrating talent and ability that will lead to success. 	",
      "	Golden boy 	-	Young man idolised for a great skill, typically in sport. 	",
      "	Golden handshake 	-	Large sum of money given to someone when they retire from a company. 	",
      "	Golden opportunity 	-	A very good opportunity that may never present itself again. 	",
      "	Grass is always greener on the other side 	-	The alternative solution may seem better even if that isn't always the case. 	",
      "	Grease someone's palm 	-	Give someone money in order to persuade them to do something dishonest. 	",
      "	Green thumb 	-	Ability to make plants grow or be good at gardening. 	",
      "	Green with envy 	-	Extremely jealous or full of envy. 	",
      "	Grey area 	-	Unclear or undefined. 	",
      "	Hanging on by fingernails 	-	Continuing to do something in a very difficult situation. 	",
      "	Hard as nails 	-	Without sentiment or sympathy for anyone. 	",
      "	Hard time 	-	Something that is difficult or to suffer hardship. 	",
      "	Having one's heart set on something 	-	Possessing a determination to achieve something. 	",
      "	Head in the clouds 	-	Having unrealistic or impractical ideas. 	",
      "	Head over heels in love 	-	Very much in love with someone. 	",
      "	Hear it on the grapevine 	-	Hear something through informal or unofficial means, like gossip. 	",
      "	Heart is in the right place 	-	Having good intentions, even if the results may not be impressive. 	",
      "	Here today, gone tomorrow 	-	When desirable things, such as money or happiness, are temporary. 	",
      "	High time 	-	When something should have been done already and is overdue. 	",
      "	Hit the big time 	-	To become successful. 	",
      "	Hit the books 	-	Begin studying hard. 	",
      "	Hit the nail on the head 	-	Do or say something exactly right. 	",
      "	Hit the panic button 	-	Act quickly and without thinking in reaction to an unexpected event. 	",
      "	Hit the road 	-	Begin travelling or leave. 	",
      "	Hit the sack (or sheets, or hay) 	-	Go to bed. 	",
      "	Hold the fort 	-	Have responsibility for something or care about someone while others are away or out. 	",
      "	Honest as the day is long 	-	Someone that is trustworthy and honest. 	",
      "	Hot potato 	-	Speak of a current issue which many people are talking about and which is usually disputed. 	",
      "	Hour of need 	-	When someone really needs something – their last chance. 	",
      "	In due course 	-	Everything will happen when it is supposed to or at the appropriate time. 	",
      "	In one's own time 	-	Taking as long as you want to complete something or completing something at your own pace. 	",
      "	In someone's black book 	-	Be in disgrace or disfavour with someone. 	",
      "	In the bag 	-	Something that is assured or a guaranteed success. 	",
      "	In the black 	-	In profit. 	",
      "	In the blink of an eye (or an instant) 	-	Something that happens very quickly. 	",
      "	In the heat of the moment 	-	Overwhelmed by what is happening in the moment. 	",
      "	In the interim 	-	Between two events or something that is temporary. 	",
      "	In the long run 	-	Over a period of time. 	",
      "	In the nick of time. 	-	Just before it is too late. 	",
      "	In the red 	-	In debt with your bank. To have a negative bank balance or to owe money to the bank. 	",
      "	In the right place at the right time 	-	When something happens fortuitously or when given an unexpected opportunity. 	",
      "	In the wrong place at the wrong time 	-	When something unlucky happens that would not normally have happened. 	",
      "	In tune with someone (on the same wavelength) 	-	Have the same ideas and be in agreement with someone else. 	",
      "	It takes two to tango 	-	Actions or communications need more than one person. 	",
      "	Itchy feet 	-	Strong impulse to travel or go somewhere. 	",
      "	Judge a book by its cover 	-	Judge something primarily on appearance. 	",
      "	Jump on the bandwagon 	-	Join a popular trend or activity. 	",
      "	Keep something at bay 	-	Keep something away or prevent something from happening. 	",
      "	Keeping up appearances 	-	Maintaining an outward show of prosperity or well-being while hiding your difficulties. 	",
      "	Keeping your finger on the pulse 	-	Being constantly aware of current developments. 	",
      "	Kept in the dark 	-	Not knowing the secrets or truth. 	",
      "	Kill time 	-	Do something whilst waiting. 	",
      "	Kill two birds with one stone 	-	Accomplish two different things at the same time. 	",
      "	Landslide victory 	-	Overwhelming victory. 	",
      "	Last straw 	-	The final problem in a series of problems that leads to a bad thing happening. 	",
      "	Laugh a minute 	-	Someone or something that is very funny. 	",
      "	Learn by rote 	-	Learn something by memorising it without thought to what is being learnt. 	",
      "	Learn something off by heart 	-	Memorise so well, that it can be written or recited without thinking. 	",
      "	Learn the ropes 	-	Learn how to do a job or task properly. 	",
      "	Lemon 	-	New vehicle that has many faults. 	",
      "	Let me see the colour of your money 	-	Prove that you can afford something. 	",
      "	Let sleeping dogs lie 	-	Leave a situation undisturbed, since it would otherwise result in trouble or complications. 	",
      "	Let slip through fingers 	-	Failing to obtain or retain a good opportunity. 	",
      "	Let the cat out of the bag 	-	Share information that was previously concealed. 	",
      "	Lick one's wounds 	-	Trying to regain confidence after a defeat. 	",
      "	Lightning fast 	-	Very fast. 	",
      "	Lights are on but nobody is home 	-	Someone is stupid or lacking intelligence. 	",
      "	Like clockwork 	-	Happens at very regular times or intervals without fail. 	",
      "	Like there's no tomorrow 	-	Do something fast or energetic, as if it were the last opportunity to do so. 	",
      "	Lining up all the ducks in a row 	-	Being well organised in preparation for something. 	",
      "	Living beyond your means 	-	Spending more than you can afford. 	",
      "	Living in an ivory tower 	-	Living a lifestyle that saves or obscures you from real world issues. 	",
      "	Living on the breadline 	-	Having very little income. 	",
      "	Long arm of the law 	-	Far-reaching power of the authorities. 	",
      "	Long time no see 	-	Not seen since long ago. 	",
      "	Look on the bright side 	-	View an unpleasant situation in a positive light. 	",
      "	Love at first sight 	-	Start feeling love towards someone the first time you see them. 	",
      "	Lovey-dovey 	-	Making an excessive display of affection. 	",
      "	Lump in your throat 	-	Tight feeling in the through because of an emotion like sadness, pride or gratitude. 	",
      "	Make a long story short 	-	Come to the point without superfluous or unnecessary details. 	",
      "	Make my day 	-	Something that makes me very happy or satisfies me. 	",
      "	Make or break 	-	Circumstances causing total success or total failure. 	",
      "	Make the grade 	-	Be satisfactory or at an accepted level. 	",
      "	Make time 	-	Find time to do something as a priority. 	",
      "	Makes your flesh crawl 	-	Something that makes you feel disgusted or nervous. 	",
      "	Making a go of it 	-	Attempting to succeed at something. 	",
      "	Making good time 	-	Completing something faster than expected. 	",
      "	Making headway 	-	Making progress in what you are trying to do. 	",
      "	Match made in heaven 	-	Relationship that is likely to be happy and successful. 	",
      "	Method to my madness 	-	Despite one's approach seeming random, there actually is structure to it. 	",
      "	Mile a minute 	-	Happens very quickly. 	",
      "	Miss the boat 	-	Miss a chance or opportunity. 	",
      "	Monkey business 	-	Mischievous or deceitful behaviour. 	",
      "	Month of Sundays 	-	A very long period of time. 	",
      "	Murphy's law 	-	Anything that can go wrong will go wrong. 	",
      "	Never in a million years 	-	Will never happen. 	",
      "	No time like the present 	-	The belief it is better to do something right away instead of waiting. 	",
      "	No time to lose 	-	Start something right away, otherwise it won't be finished on time. 	",
      "	Not letting grass grow under your feet 	-	Not delaying in getting something done. 	",
      "	Not letting moss grow over 	-	Doing something now or without delay. 	",
      "	Not playing with a full deck 	-	Lacking intelligence. 	",
      "	Now and then (or again) 	-	Occasionally. 	",
      "	Now or never 	-	Something that should be done now or it will never be done. 	",
      "	Off colour 	-	Unwell. 	",
      "	Off one's rocker 	-	Crazy; demented; out of one's mind; in a confused or befuddled state of mind; senile. 	",
      "	Off to a flying start 	-	Something that is immediately successful or has begun well. 	",
      "	Old hand 	-	Person with a lot of experience in something. 	",
      "	Old school 	-	Holding ideas that were popular and important in the past but which are no longer so. 	",
      "	On the ball 	-	When someone understands the situation well or is doing well. 	",
      "	On the brain 	-	Thinking or talking about something constantly. 	",
      "	On the rocks 	-	Relationship experiencing problems. 	",
      "	On time 	-	Not being late or something happening at the expected time. 	",
      "	Once in a blue moon 	-	Happens very rarely or once in a lifetime. 	",
      "	Once upon a time 	-	Something that happened a long time ago. 	",
      "	Only time will tell 	-	The truth, answer or result, will be revealed at some future point. 	",
      "	Out of the blue 	-	Appear suddenly from nowhere and without warning. 	",
      "	Out of the red 	-	No longer in debt. 	",
      "	Out of time 	-	No time left to do something or a set time has been reached. 	",
      "	Paint the town red 	-	Go out and have a really good time at a party. 	",
      "	Pass with flying colours 	-	Pass with a high score. 	",
      "	Penny for your thoughts 	-	A way of asking what someone is thinking. 	",
      "	Picture paints a thousand words 	-	Visual presentations are far more descriptive than words. 	",
      "	Piece of cake 	-	A job, task or other activity that is easy or simple. 	",
      "	Pitch black 	-	Very dark with zero or almost zero visibility. 	",
      "	Place in the sun 	-	A position that provides you all the success and happiness you want. 	",
      "	Pop the question 	-	Propose marriage to someone. 	",
      "	Pot calling the kettle black 	-	Hypocritically criticise or accuse someone else is as guilty as the person criticising. 	",
      "	Pressed for time 	-	Being rushed or not having enough time to complete something. 	",
      "	Proud as a peacock 	-	Very proud 	",
      "	Pull the plug 	-	Terminate or discontinue something. 	",
      "	Pull wool over other people's eyes 	-	Deceive someone into thinking well of them. 	",
      "	Pulling out all the stops 	-	Doing everything you can to make something happen. 	",
      "	Punch above one's weight 	-	Performing beyond your ability. 	",
      "	Puppy love 	-	Temporary infatuation between young people. 	",
      "	Put it in black and white 	-	Write down for confirmation or evidence. 	",
      "	Put your thinking cap on 	-	Engage your mind and think in a serious manner. 	",
      "	Rags to riches 	-	Becoming very rich whilst starting very poor. 	",
      "	Raining cats and dogs 	-	Raining very heavily. 	",
      "	Raise the white flag 	-	Accept defeat and surrender to the other party. 	",
      "	Raring to go 	-	Being very eager or enthusiastic about the idea. 	",
      "	Rat race 	-	Exhausting and repetitive routine. 	",
      "	Red flag 	-	Signal or indication that something is not working properly of correctly. 	",
      "	Red herring 	-	Unimportant matter that misleads and draws attention away. 	",
      "	Red hot 	-	New and exciting, creating much demand. 	",
      "	Red in the face 	-	Embarrassed. 	",
      "	Red tape 	-	Set of rules and/or regulations that slow or stop progress. 	",
      "	Red-eye 	-	Journey that leaves late in the night and arrives early in the morning. 	",
      "	Road hog 	-	Dangerous driver. 	",
      "	Roll out the red carpet 	-	Greet a person with great respect and give them a big, warm welcome. 	",
      "	Sail through something 	-	Being successful as something without difficulty. 	",
      "	Save time 	-	Do something quickly or in a way that allow time for other things. 	",
      "	School of hard knocks 	-	Learning through difficult experiences, as opposed to formal, classroom education. 	",
      "	School of thought 	-	Particular philosophy or way of thinking about something. 	",
      "	Schoolboy error 	-	Very basic or foolish mistake. 	",
      "	Seeing eye to eye 	-	Two or more people agree on something. 	",
      "	Seeing red 	-	React with uncontrollable rage. 	",
      "	Sell ice to Eskimos 	-	Persuade people to go against their best interests or to accept something unnecessary. 	",
      "	Shelf life 	-	The expected duration of lifespan of something (typically food, drink or medicine). 	",
      "	Show of hands 	-	Raising hands to vote about something. 	",
      "	Shown the red card 	-	Dismissed or told to leave. 	",
      "	Silver screen 	-	Film industry 	",
      "	Single file 	-	Line of people with one person standing behind another. 	",
      "	Sink or swim 	-	Fail or succeed. 	",
      "	Sinking teeth into something 	-	Doing something with a lot of energy and enthusiasm. 	",
      "	Sit on the fence 	-	Unable or unwilling choose or make a decision. 	",
      "	Skip class 	-	Not go to school when you should. 	",
      "	Sleeping (or silent) partner 	-	Person who has put money into a business or venture but who is not involved in running it. 	",
      "	Slice of the pie 	-	Share of something, such as money, profits, etc. 	",
      "	Smash hit 	-	A big success. 	",
      "	Snowed under 	-	Having too much to do. 	",
      "	Sooner or later 	-	Something is certain to happen but it isn't known when exactly. 	",
      "	Sour grapes 	-	Pretending to dislike something you cannot have. 	",
      "	Spanner in the works 	-	Suddenly disrupt something by introducing something unexpected or unwanted. 	",
      "	Speak of the devil 	-	When the person you have just been talking about arrives. 	",
      "	Speaks volumes 	-	Express a reaction without words. 	",
      "	Spill the beans 	-	Reveal a secret. 	",
      "	Standing ground 	-	Maintaining your position 	",
      "	Standing the test of time 	-	Something that lasts or continues to work well for a long time. 	",
      "	Steal someone's thunder 	-	Take the credit for something someone else did. 	",
      "	Stiff upper lip 	-	Not showing emotions. 	",
      "	Storm in a teacup 	-	Exaggerate a problem. 	",
      "	Straight from the horse's mouth 	-	From the authoritative source. 	",
      "	Stuck in a time warp 	-	Not changed for a very long time, when everything else around has. 	",
      "	Swallow one's pride 	-	Accepting something humiliating or embarrassing. 	",
      "	Sweet tooth 	-	Liking for sweet-tasting foods. 	",
      "	Take each day as it comes 	-	Deal with things as and when they happen. 	",
      "	Take with a grain (or pinch) of salt 	-	Not to take what someone says too seriously. Be sceptical about something. 	",
      "	Taste of your own medicine 	-	Something happens to you, or is done to you, that you have done to someone else. 	",
      "	Teacher's pet 	-	Teacher's favourite student. 	",
      "	The big time 	-	The top level of a profession 	",
      "	The moment of truth 	-	When an important decision is made or the truth about something is revealed. 	",
      "	The ship has sailed 	-	A particular opportunity has passed and is no longer available. 	",
      "	The time is ripe 	-	The right or most opportune moment to do something. 	",
      "	Thinking on your feet 	-	Adjusting quickly to change and making fast decisions. 	",
      "	This day and age 	-	These or modern times. 	",
      "	Tickled pink 	-	Very pleased, thrilled or delighted about something. 	",
      "	Tie the knot 	-	Get married. 	",
      "	Time after time (time and time again) 	-	Do something repeatedly 	",
      "	Time flies 	-	When time passes quickly. 	",
      "	Time for a change 	-	Stop what you are doing and start doing something else. 	",
      "	Time heals all wounds (or time is a great healer) 	-	Feelings of hurt (usually emotional) will go away after some time has passed. 	",
      "	Time is money 	-	Time is a valuable commodity. Payment is needed before doing something. 	",
      "	Time is of the essence 	-	When meeting a deadline is very important or critical. 	",
      "	Time of one's life 	-	A time when someone is enjoying themselves. 	",
      "	Time on one's hands (or side) 	-	When you can afford to wait before doing or achieving something. 	",
      "	Tongue-tied 	-	Difficulty in expressing yourself because of nervousness or embarrassment. 	",
      "	Too many chiefs and not enough Indians 	-	Too many people telling others what to do. 	",
      "	Too much (free) time on one's hand 	-	When someone doesn't have enough to do. 	",
      "	Top banana 	-	Most important person in a group. 	",
      "	Top dog 	-	Most important person. 	",
      "	Tough cookie 	-	Very determined person. 	",
      "	Tricks of the trade 	-	Clever or expert way of doing something. 	",
      "	True colours 	-	Someone's actual character. 	",
      "	Turn back the hands of time 	-	Reverse something or go back to a time in the past. 	",
      "	University of life 	-	Daily life and work where you learn more than you would through formal education. 	",
      "	Until hell freezes over 	-	Something will never happen, no matter how hard or long you try for it to. 	",
      "	Up in smoke 	-	Something that ends before getting a result. 	",
      "	Waiting in the wings 	-	Waiting for an opportunity to take action. 	",
      "	Walk out on someone 	-	Leave a partner and end the relationship. 	",
      "	Wasting time 	-	Doing something with no purpose. 	",
      "	Well-oiled machine 	-	Unit of people or a group of things working well together. 	",
      "	Whale of a time 	-	Enjoying something thoroughly. 	",
      "	White as a sheet (or ghost) 	-	In a state of great fear or anxiety. 	",
      "	White collar 	-	Officer worker. 	",
      "	White elephant 	-	Expensive item that's costly to maintain and not particularly useful. 	",
      "	White lie 	-	Little or harmless lie told to be polite and avoid hurting someone's feelings. 	",
      "	Whitewash 	-	Cover up or gloss over faults. 	",
      "	Whole nine yards 	-	Everything. All of it. 	",
      "	With bells on 	-	When you are delighted and eager to go somewhere. 	",
      "	Wooden spoon 	-	Imaginary prize for the last person in a race. 	",
      "	Works like a charm 	-	Works very well or as expected. 	",
      "	Wouldn't be caught dead 	-	Would never like to do something. 	",
      "	Year in, year out 	-	Happens every year for many years in a row. 	",
      "	Yellow-bellied 	-	Coward 	",
      "	You can't teach an old dog new tricks 	-	People used to doing things a certain way are often unable to change their ways. 	",
      "	Your guess is as good as mine 	-	Not knowing the answer. 	",

    ];
    _nebulae.sort();

      FirebaseAdMob.instance
          .initialize(appId: "ca-app-pub-9906861794105751~9870520234");
      myBanner = buildBannerAd()..load();
      super.initState();


  }

  _DictionaryState() {
    //Register a closure to be called when the object changes.
    _searchview.addListener(() {
      if (_searchview.text.isEmpty) {
        //Notify the framework that the internal state of this object has changed.
        setState(() {
          _firstSearch = true;
          _query = "";
        });
      } else {
        setState(() {
          _firstSearch = false;
          _query = _searchview.text;
        });
      }
    });
  }

//Build our Home widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Idioms & Phrases- Dictionary"),
      ),
      body: new Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: new Column(
          children: <Widget>[
            _createSearchView(),
            _firstSearch ? _createListView() : _performSearch()
          ],
        ),
      ),
    );
  }
  //Create a SearchView
  Widget _createSearchView() {
    return new Container(
      decoration: BoxDecoration(border: Border.all(width: 1.0)),
      child: new TextField(
        controller: _searchview,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: new TextStyle(color: Colors.grey[300]),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  //Create a ListView widget
  Widget _createListView() {
    return new Flexible(
      child: new ListView.builder(
          itemCount: _nebulae.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.blueGrey[900],
              elevation: 5.0,
              child: new Container(
                margin: EdgeInsets.all(15.0),
                child: new Text("${_nebulae[index]}"),
              ),
            );
          }),
    );
  }
  //Perform actual search
  Widget _performSearch() {
    _filterList = new List<String>();
    for (int i = 0; i < _nebulae.length; i++) {
      var item = _nebulae[i];

      if (item.toLowerCase().contains(_query.toLowerCase())) {
        _filterList.add(item);
      }
    }
    return _createFilteredListView();
  }
  //Create the Filtered ListView
  Widget _createFilteredListView() {
    return new Flexible(
      child: new ListView.builder(
          itemCount: _filterList.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.blueGrey[900],
              elevation: 5.0,
              child: new Container(
                margin: EdgeInsets.all(15.0),
                child: new Text("${_filterList[index]}"),
              ),
            );
          }),
    );
  }
}
