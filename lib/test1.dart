import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  final String question;
  final Function rese;
  final Function resetHand;
  final int inde;
  Test1({
    @required this.resetHand,
    @required this.question,
    @required this.rese,
    @required this.inde,
  });

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          RaisedButton(
            color: Colors.pink,
            textColor: Colors.orange,
            child: Text(widget.question),
            onPressed: widget.resetHand,
          ),
        ],
      ),
    );
  }
}
