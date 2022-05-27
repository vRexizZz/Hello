import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../shared/components/components/matrialbutton/buttons.dart';
import '../../shared/components/components/textformfield/defaulttextform.dart';
import '../Login/Login in.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool passhide =true;
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          splashRadius: 20,
            icon: Icon(Icons.arrow_back_ios_outlined),color: Colors.grey,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Form(
              key: formkey,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                        'Creat a new account',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 25,),
                    defaulttextform(
                      labeltext: 'Username',
                      prefixicon: Icon(Icons.person),
                      passwordhidden: false,

                    ),
                    SizedBox(height: 5,),

                    defaulttextform(
                    labeltext: 'Email',
                    hinttext: 'Example@Example.com',
                      passwordhidden: false,
                      prefixicon: Icon(Icons.mail)
                    ),
                    SizedBox(height: 5,),
                    defaulttextform(
                      passwordhidden: passhide,
                      prefixicon: Icon(Icons.password),
                      labeltext: 'Password',
                      suffixicon: IconButton(onPressed: (){
                        setState(() {
                          passhide=!passhide;
                        });
                      },
                        splashRadius: 1,
                          icon: passhide?Icon(Icons.remove_red_eye):Icon(Icons.visibility_off),
                    ),
                    ),
                    SizedBox(height: 5,),


                    Container(
                      width: 320,
                      height: 70,
                      color: Colors.white,
                      child: IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(35)
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    defaultButton(text: 'Create account',letterspace: 1.5, Function: (){
                      if(formkey.currentState!.validate())
                        {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.SCALE,
                            dialogType: DialogType.SUCCES,
                            body: Center(child: Text(
                              'If the body is specified, then title and description will be ignored, this allows to 											further customize the dialogue.',
                              style: TextStyle(),
                            ),),
                            title: 'This is Ignored',
                            desc:   'This is also Ignored',
                            btnOkOnPress: () {},
                            btnOkColor: Colors.blue,
                          )..show();
                        }else
                          {
                            AwesomeDialog(
                              context: context,
                              animType: AnimType.SCALE,
                              dialogType: DialogType.ERROR,
                              body: Center(child: Text(
                                'If the body is specified, then title and description will be ignored, this allows to 											further customize the dialogue.',
                                style: TextStyle(),
                              ),),
                              title: 'This is Ignored',
                              desc:   'This is also Ignored',
                              btnOkOnPress: () {},
                              btnOkColor: Colors.blue,
                            )..show();

                          }


                    },color: (0xFF0969C3),width: 250,),
                    SizedBox(height: 20,),
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
                    SizedBox(height: 20,),
                    Text(
                      'Social Media Sign up'
                      ,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),),
                    SizedBox(height: 20,),
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
                    SizedBox(height: 25,),
                    Row(

                      children: [
                        SizedBox(width: 10,),
                        Text('Already have an account ? ',style: TextStyle(fontWeight: FontWeight.w600),),

                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Screenlogin()));
                        },
                            child: Text('LOGIN',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600),))
                      ],
                    )
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



