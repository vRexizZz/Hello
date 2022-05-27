import 'package:flutter/material.dart';
import 'package:irst_project/home_screen.dart';
import 'Screentwo.dart';
import 'moduules/Login/Login in.dart';
import 'moduules/Welcome/welcomescreen.dart';
import 'moduules/companylogin/companysign.dart';
import 'moduules/signup/signupscreen.dart';
import 'moduules/splash_screen/splashscreen.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget
{

  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(home: splashscreen());
  }
}
