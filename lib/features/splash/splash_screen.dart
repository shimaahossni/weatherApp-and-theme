import 'dart:async';

import 'package:flutter/material.dart';
import 'package:themelanguage/features/layout/layout_screen.dart';
class SplashScreen extends StatefulWidget {
  static const String routeApp="SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5),
          () {
        Navigator.pushReplacementNamed(context,LayoutScreen.routeApp);
      },);
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size mediaquery=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff2d2d2d),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset("assets/images/logo.png",
            Image.asset("assets/images/splash1.gif",
              width: mediaquery.width*.8,
              fit: BoxFit.cover,
            ),
            SizedBox(height: mediaquery.height*.03,),
            CircularProgressIndicator(color: Colors.white,),
          ],
        ),
      ),

    );
  }
}
