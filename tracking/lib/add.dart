import 'dart:ui';
import 'package:flutter/material.dart';
import 'myappbar.dart';

class add extends StatefulWidget {
  const add({Key key}) : super(key: key);

  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
  String inputs = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, //가로에 첫번째 자리에서 시작되는 것
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "표시명",
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff5B83AD),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          child: TextField(
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(hintText: '입력해 주세요'),
                            onChanged: (String str) {
                                  setState(() => inputs = str);
                              },
                          ),
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
