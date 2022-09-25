import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class OptionTile extends StatefulWidget {
  final String option, description, correctAnswer, optionSelected;
  OptionTile({@required this.optionSelected,@required this.correctAnswer,@required this.description,@required this.option});
  @override
  _OptionTileState createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.grey[800],),

        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(

            children: <Widget>[
              Padding(padding: EdgeInsets.only(left:8),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: widget.description== widget.optionSelected
                          ? widget.optionSelected==widget.correctAnswer
                          ? Colors.green.withOpacity(0.7)
                          :Colors.red.withOpacity(0.7)
                          : Colors.white,width: 1.4),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  alignment: Alignment.center,
                  child: Text("${widget.option}",
                    style: TextStyle(color: widget.optionSelected == widget.description ?
                    widget.correctAnswer == widget.optionSelected
                        ? Colors.green.withOpacity(0.7):Colors.red : Colors.white),),),
              ),
              SizedBox(width: 8,),
              Expanded(child: Text(widget.description,style: TextStyle(fontSize: 17,color: widget.optionSelected == widget.description ?
              widget.correctAnswer == widget.optionSelected
                  ? Colors.green.withOpacity(0.7):Colors.red : Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
