import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkTheme=ThemeData(

    scaffoldBackgroundColor:Color(0xff333739),
    appBarTheme: AppBarTheme(
      titleSpacing: 10.0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xff333739),
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: Color(0xff333739),
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      backgroundColor: Color(0xff333739),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
      elevation: 20.0,
    ),

    textTheme: TextTheme(
      bodyText1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
          color: Colors.white),
      bodyText2: TextStyle(color: Colors.grey[400]),
    ));