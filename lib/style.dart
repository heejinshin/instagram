import 'package:flutter/material.dart';

var theme = ThemeData(
  bottomNavigationBarTheme:
  BottomNavigationBarThemeData(selectedItemColor: Colors.pink),
  iconTheme:IconThemeData(color:  Colors.blue),   // appbar 에 적용 안됨
  textTheme: TextTheme(
    bodyText2: TextStyle(color: Colors.red),
    bodyText1: TextStyle(color: Colors.green)
  ),
  textButtonTheme:TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: Colors.pink
    )
  ),
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //   )

  appBarTheme: AppBarTheme(
      elevation: 1,
      titleTextStyle: TextStyle(color:Colors.black54, fontSize: 30),
      color: Colors.white,
      actionsIconTheme: IconThemeData(color: Colors.black54, size: 35)
  ),
);
