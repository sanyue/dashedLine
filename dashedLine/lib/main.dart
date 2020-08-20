import 'package:flutter/material.dart';
import 'dashed_line.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SYHomePage(),
    );
  }
}

class SYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter!'),
      ),
      body: SYHomeContent(),
    );
  }
}

class SYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('横向虚线：'),
          SizedBox(height: 5,),
          Container(
            width: 300,
            child: SYDashedLine(axis: Axis.horizontal,dashedWidth: 10,),
          ),
          SizedBox(height: 20,),
          Text('纵向虚线：'),
          SizedBox(height: 5,),
          Container(
            height: 200,
            child: SYDashedLine(axis: Axis.vertical,dashedHeight: 10,),
          ),
        ],
      ),
    );
  }
}


