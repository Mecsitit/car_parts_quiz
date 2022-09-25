
class Question {
  String questionText;
  List<String> mcqList;
  String mcqAnswer;

  Question(String q,  List<String> m, String ma) {
    questionText = q;
    mcqList = m;
    mcqAnswer= ma;
  }
}

class Question1 {
  String questionText;
  List<String> mcqList;
  String mcqAnswer;
  String discrip;

  Question(String q,  List<String> m, String ma, String dis) {
    questionText = q;
    mcqList = m;
    mcqAnswer= ma;
    discrip= dis;
  }
}