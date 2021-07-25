import 'dart:ui';
import 'package:flutter/material.dart';
import 'myappbar.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter/cupertino.dart';

class Mytracking extends StatefulWidget {
  const Mytracking({Key key}) : super(key: key);

  @override
  _MytrackingState createState() => _MytrackingState();
}

class _MytrackingState extends State<Mytracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  flex: 0,
                  child: Image.asset(
                    "assets/icons/ship.png",
                    width: 40,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //가로에 첫번째 자리에서 시작되는 것
                    children: [
                      Text(
                        "아마존",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
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
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    child: FAProgressBar(
                      direction: Axis.vertical,
                      currentValue: 80,
                      size: 8,
                      progressColor: const Color(0xff5B83AD),
                      backgroundColor: const Color(0xffD5D5D5),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Column(children: [
                const Procedure(),
              ]),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _handleFABPressed,
      //   child: Icon(Icons.filter_alt_outlined),
      // ),
    );
  }

//   void _handleFABPressed() {
//   showModalBottomSheet<int>(
//     backgroundColor: Colors.transparent,
//     context: context,
//     builder: (context) {
//       return Popover(
//         child: Container(
//           height: 200,
//           color: Colors.lightBlue,
//         ),
//       );
//     },
//   );
// }
}

// card
class Procedure extends StatefulWidget {
  const Procedure({Key key}) : super(key: key);

  @override
  _ProcedureState createState() => _ProcedureState();
}

class _ProcedureState extends State<Procedure> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Align(
        alignment: Alignment.bottomCenter, //Alignment(0.0, 1.0)
        child: Container(
          width: 360.0,
          height: 50.0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(19), topRight: Radius.circular(19)),
            child: Container(
              // padding: EdgeInsets.all(10),
              child: Text(
                "통관처리단계",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xff5B83AD),
              ),
            ),
          ),
        ),
      ),
      onPressed: _handleFABPressed,
    );
  }

  void _handleFABPressed() {
    showModalBottomSheet<int>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Popover(
          child: Container(
            height: 200,
            color: const Color(0xff5B83AD),
          ),
        );
      },
    );
  }
}

class Popover extends StatelessWidget {
  const Popover({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(16.0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(19), topRight: Radius.circular(19)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildHandle(context), if (child != null) child],
      ),
    );
  }

  Widget _buildHandle(BuildContext context) {
    final theme = Theme.of(context);

    return FractionallySizedBox(
      widthFactor: 0.25,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Container(
          height: 5.0,
          decoration: BoxDecoration(
            color: theme.dividerColor,
            borderRadius: const BorderRadius.all(Radius.circular(2.5)),
          ),
        ),
      ),
    );
  }
}
