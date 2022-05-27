import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  required String text,
  required Function ,
  double? width=300,
  double? height=50,
  color,
  Color? lettercolor=Colors.white,
  double raduis=25.0,
  double letterspace=1.5,



})=>Container(
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: MaterialButton(
    onPressed: Function,
    child: Text(text,
      style: TextStyle(
      fontWeight: FontWeight.w600,
        letterSpacing: letterspace,
        color: lettercolor,
        fontFamily: 'RobotoCondensed'
    ),) ,height: height,
    minWidth: width,
    color: Color(color),
  ),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(raduis)
            )

);