import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor=Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xffDFECDB),
    appBarTheme: AppBarTheme(
      color:  Color(0xffDFECDB),
    ),

    //bottomNavigationBarTheme:
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor:  primaryColor,
      selectedIconTheme: IconThemeData(color: primaryColor,size: 38),
      unselectedItemColor: Color(0xFFC8C9CB),
      unselectedIconTheme: IconThemeData(color: Color(0xFFC8C9CB),size: 30),


    ),


    //floatingActionButtonTheme:
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: Colors.white, width: 3),
      ),

    ),

    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
      padding: EdgeInsets.zero,
    ),

    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.black87,fontSize: 24,fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),
      titleSmall: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.bold),

      bodyLarge: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.normal),
      bodyMedium: TextStyle(color: Colors.black87,fontSize: 14,fontWeight: FontWeight.normal),
      bodySmall: TextStyle(color: Colors.black87,fontSize: 12,fontWeight: FontWeight.normal),

      labelLarge: TextStyle(color: Colors.black87,fontSize: 24,fontWeight: FontWeight.bold),
      labelMedium: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),
      labelSmall: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.bold),

      headlineLarge: TextStyle(color: Colors.black87,fontSize: 24,fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.bold),

      displayLarge: TextStyle(color: Colors.black87,fontSize: 24,fontWeight: FontWeight.bold),
      displayMedium: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),
      displaySmall: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.bold),
    ),
  );




  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xFF919193),
    appBarTheme: AppBarTheme(
      color:  Color(0xFF919193),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent ,
      type : BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor:  primaryColor,
      selectedIconTheme: IconThemeData(color: primaryColor,size: 38),
      unselectedItemColor: Color(0xFFC8C9CB),
      unselectedIconTheme: IconThemeData(color: Color(0xFFC8C9CB),size: 30),
    ),

    bottomAppBarTheme: BottomAppBarTheme(
      color: Color(0xff141922),
      padding: EdgeInsets.zero,
    ),

    //floatingActionButtonTheme:
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: Color(0xFF060E1E), width: 3),
      ),
    ),


    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),
      titleSmall: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),

      bodyLarge: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.normal),
      bodyMedium: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.normal),
      bodySmall: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal),

      labelLarge: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
      labelMedium: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),
      labelSmall: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),

      headlineLarge: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),

      displayLarge: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
      displayMedium: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),
      displaySmall: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),
    ),



  );
}