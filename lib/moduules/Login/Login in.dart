import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irst_project/moduules/Welcome/welcomescreen.dart';

import '../../shared/components/components/buttons.dart';
import '../../shared/components/components/matrialbutton/buttons.dart';
import '../../shared/components/components/textformfield/defaulttextform.dart';
import '../signup/signupscreen.dart';





class Screenlogin extends StatefulWidget {
  const Screenlogin({Key? key}) : super(key: key);

  @override
  State<Screenlogin> createState() => _ScreenloginState();
}

class _ScreenloginState extends State<Screenlogin> {
  bool icons=true;

  var formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: Colors.white10,
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),

        child: IconButton(
          alignment: Alignment.center,
          color: Colors.grey,
          splashRadius: 20,
          iconSize: 25,
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,),
        ),
      ),),
      body:
        Form(
          key: formkey,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SafeArea(
                child: Padding(
                  padding:EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('Welcome',style: TextStyle(fontSize: 30,fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('Sign In To Countinue',style: TextStyle(fontSize: 15,fontFamily: 'RobotoCondensed',letterSpacing: 1.5,fontWeight: FontWeight.w600),),
                        SizedBox(height: 45,),
                        defaulttextform(
                          labeltext: 'Email',
                          prefixicon: Icon(Icons.email),
                          passwordhidden: false
                        ),
                        SizedBox(height: 10,),
                        defaulttextform(
                          labeltext: 'Password',
                          prefixicon: Icon(Icons.password),
                          passwordhidden: icons,
                          suffixicon: IconButton(splashRadius: 1,
                              onPressed: (){
                            setState(() {
                              icons=!icons;
                            });

                          }, icon:  icons ? Icon(Icons.visibility_off):Icon(Icons.visibility)),
                        ),
                        SizedBox(height: 35,),
                        defaultButton(text: 'LOGIN',Function: (){
                          if(formkey.currentState!.validate())
                            {
                              print ('no');

                            }
                        },lettercolor: Colors.white,color: (0xFF0969C3),width: 250),
                        SizedBox(height: 10,),
                        Container(
                          height: 35,
                            child: TextButton(onPressed: (){}, child: Text('Forget Password ?'))
                        ),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text(
                                'ــــــــــــــــــــــــــــــــــــــــــــــ'
                            ),
                            SizedBox(width: 10,),
                            Text('OR'),
                            SizedBox(width: 10,),
                            Text(
                                'ــــــــــــــــــــــــــــــــــــــــــــــــ'
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text(
                            'Social Media Login'
                        ,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            SizedBox(width: 65,),
                            Container(
                              child: GestureDetector(
                                onTap: (){},
                                child: Image(image: NetworkImage(
                                      'https://fthmb.tqn.com/c05XvnTFkSPwfRR3TY3aZikoDvE=/768x0/filters:no_upscale()/2000px-Gmail_Icon.svg-599998b3b501e80010490cb5.png'
                                 , ),
                                  width: 50,

                                height: 50,),
                              ),
                              ),
                            SizedBox(width: 30,),
                            GestureDetector(onTap: (){},
                                child: Icon(Icons.facebook,color: Colors.blue,size: 50,)),
                            SizedBox(width: 30,),
                            GestureDetector(
                              onTap: (){},
                                child: Icon(Icons.apple,size: 50,)),
                            SizedBox(width: 65,),


                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Don't have an account ?  "),

                            Container(
                              width: 60,
                              child: GestureDetector(onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>Signupscreen()
                                    ));
                              },
                                  child: Text('Sign Up',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),)),
                            )
                          ],
                        )


                      ],
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
    );
  }
}
