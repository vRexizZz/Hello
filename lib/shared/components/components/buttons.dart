import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttons({
  required String text,
  required Function ,
  double width=300,
  double height=50,
  color,
  Color lettercolor=Colors.white,
  double raduis=25.0,


})=>Container(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: MaterialButton(
      onPressed: Function,
      child: Text(text,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: lettercolor,
            fontFamily: 'RobotoCondensed'
        ),) ,height: height,
      minWidth: 300,
      color: Color(color),
    ),
    decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(raduis)
    )

);