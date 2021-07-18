import 'dart:ui';
import 'package:flutter/material.dart';
import 'add.dart';

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
      appBar: AppBar(title: Text(
        'Tracking',
        style: TextStyle(fontFamily: 'segoeui', fontStyle: FontStyle.italic, fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
        // titleTextStyle: TextStyle(fontFamily: "segoeui"),
        backgroundColor: Color(0xff5B83AD),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  flex:0,
                  child:Image.asset("assets/icons/ship.png", width: 40,),
                ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, //가로에 첫번째 자리에서 시작되는 것
                  children: [
                    Text(
                      "아마존", 
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "통관목록심사완료", 
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff5B83AD),
                            fontWeight: FontWeight.bold),
                          ),
                      SizedBox(width: 5),
                      Text(
                        "입항 MM.DD",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                        ),
                      ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 0,
                child: Column(
                  children: [
                    Text(
                      "US",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff5B83AD),
                        fontWeight: FontWeight.bold),
                    ),
                     Text(
                      "택배사",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
               ),
                SizedBox(width: 20),
              ],
              
            ),  
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: 0.4622,
                  valueColor: AlwaysStoppedAnimation(const Color(0xff5B83AD)),
                  backgroundColor: const Color(0xffD5D5D5),

                ),
              ),
            ),
          ],
        ),
      
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
                })
                        );},

        tooltip: '택배조회',
        child: Icon(Icons.add_rounded, size: 40),
      ), 
    );
  }
}
