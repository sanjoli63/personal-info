import 'package:flutter/material.dart';
import 'test1.dart';
import 'test2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _info = const [
    {'question': 'Name', 'answer': 'Sanjoli goyal'},
    {'question': 'Degree', 'answer': 'B.tech'},
    {'question': 'Branch', 'answer': 'IT'},
    {'question': 'Year', 'answer': '2nd'},
    {'question': 'College', 'answer': 'JIIT'},
  ];

  var _index = 0;
  var max = 0;

  void _answer() {
    setState(() {
      _index = _index + 1;
    });
    print('abd');
  }

  void _ans() {
    setState(() {
      max = _index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Info'),
        ),
        body: _index < _info.length
            ? Column(
                children: [
                  // ...(_info[_index]['question'] as List<String>).map((questions) {
                  //   return Test1(rese: _answer, question: questions['question']);
                  // }).toList()
                  // ..._info.map((eachMap) {
                  //   return Test1(
                  //       rese: _answer,
                  //       inde: _index,
                  //       question: eachMap['question'],
                  //       answer: eachMap['answer']);
                  // }).toList()
                  ..._info.map((answer) {
                    return Test1(
                        rese: _ans,
                        resetHand: _answer,
                        question: answer['question'],
                        inde: _index);
                  }).toList()
                ],
              )
            : Column(
                children: [
                  ..._info.map((ams) {
                    return Test2(
                      abc: _ans,
                      ans: ams['answer'],
                    );
                  }).toList()
                ],
              ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
