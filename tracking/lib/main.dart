import 'dart:ui';
import 'package:flutter/material.dart';
import 'add.dart';
import 'myappbar.dart';
import 'mylist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tracking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Mylist()
        ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff5B83AD),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => add()),
          Navigator.push(context,
              MaterialPageRoute<void>(builder: (BuildContext context) {
            return add();
          }));
        },
        tooltip: '택배조회',
        child: Icon(Icons.add_rounded, size: 40),
      ),
    );
  }
}
