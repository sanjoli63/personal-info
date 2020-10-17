import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  final Function abc;
  final String ans;
  Test2({
    @required this.abc,
    @required this.ans,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.pink,
      child: Text(ans),
    );
  }
}
