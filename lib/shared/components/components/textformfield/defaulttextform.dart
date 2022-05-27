import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaulttextform
    ( {
  double width = 320.0,
  String? labeltext='',
  double raduis=30,
  String hinttext='',
  // double height=50,
  Icon? prefixicon,
  IconButton? suffixicon,
  bool passwordhidden=true,
  Icon? eyes,
})=> Container(
  height: 80,
    width: width,
    child : TextFormField(
      validator: (value){
        if(value!.isEmpty)
          {
            return '$labeltext must be not empty';
          }
        return null;
      },
      obscureText: passwordhidden ,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(raduis)
        ),
        labelText: labeltext,
        hintText: hinttext ,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
        suffixIconColor: Colors.red
      ),
    ),
  );
