import 'package:custom_clippers/Clippers/directional_wave_clipper.dart';
import 'package:custom_clippers/Clippers/sin_cosine_wave_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../../shared/components/components/matrialbutton/buttons.dart';
import '../../shared/components/components/textformfield/defaulttextform.dart';
import '../Login/Login in.dart';
import '../companylogin/companysign.dart';
import '../signup/signupscreen.dart';

class Welcome extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
   return Welcomestate();
  }

}
class Welcomestate extends State<Welcome>
{
  @override
  Widget build(BuildContext context)
  {
   return Scaffold(

     body:
     SafeArea(
       child:ListView(
         children: [
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
               width: double.infinity,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SizedBox(height: 55,),
                         Image(image: AssetImage('images/hero.png'),width: 220,height: 220,),
                         SizedBox(height: 15),
                       ]
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.values[2],
                     children: [
                       Text('Hello !',style: TextStyle(fontSize: 60,fontFamily: 'BebasNeue',letterSpacing: 2),),
                       SizedBox(height: 5,),
                       Text("Find the perfect job for you",style: TextStyle(fontSize: 21,fontFamily: 'RobotoCondensed-Light'),),
                       Text("Search your career opportunity",style: TextStyle(fontSize: 21,fontFamily: 'RobotoCondensed-Light'),),
                       SizedBox(height: 5,),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("through",style: TextStyle(fontSize: 15)),
                           Text(" 12,800",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                           Text(" jobs",style: TextStyle(fontSize: 15),),
                         ],
                       ),
                       SizedBox(height: 23,),
                       defaultButton(text: 'LOGIN',Function: (){
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                             builder:(Context)=>Screenlogin()
                             )
                         );
                       },color: (0xFF0969C3),),
                       SizedBox(height: 20,),
                       defaultButton(text: 'Join Now',
                           Function: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));
                           },
                           lettercolor: Colors.white,color: (0xFF002745),),
                     ],
                   ),
                 ],
               ),
             ),
           ),
           SizedBox(height: 30,),

           Container(
             alignment: AlignmentDirectional.center,
             color: Colors.grey[300],
             width: double.maxFinite,
             height: 70,
             child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Text('Owner of a company and looking for employees ?',style: TextStyle(fontWeight: FontWeight.w600),),
                   SizedBox(height: 8.5,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>Companysignup()));
                     },
                       child: Text('Create a company account',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600 ,color: Colors.blue),)),
                 ],
               ),
             ),
           ),
         ],

       ),

     ),
   );
  }

}


