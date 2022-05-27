import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../Login/Login in.dart';
import '../Welcome/welcomescreen.dart';




class splashscreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return splashscreenstate();
  }

}
class splashscreenstate extends State<splashscreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SplashScreenView(
          navigateRoute: Welcome(),
          duration: 5000,
          imageSize: 190,
          imageSrc: "images/777.png",
          text: "SHOGHLANA",
          textType: TextType.ColorizeAnimationText,
          textStyle: TextStyle(
            fontFamily: "BebasNeue",
            letterSpacing: 3,
            fontSize: 40.0,
          ),
          colors: [
            Colors.purple,
            Colors.blue,
            Colors.yellow,
            Colors.red,
          ],
          backgroundColor: Colors.white,
        )
    );
  }

}
