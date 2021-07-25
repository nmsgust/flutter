import 'package:flutter/material.dart';
 
class MyAppBar extends StatelessWidget implements PreferredSizeWidget  {
  MyAppBar({Key key,}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return new AppBar(
      title: Text(
          'Tracking',
          style: TextStyle(
              fontFamily: 'segoeui',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
        // titleTextStyle: TextStyle(fontFamily: "segoeui"),
        backgroundColor: Color(0xff5B83AD),
    );
  }
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
