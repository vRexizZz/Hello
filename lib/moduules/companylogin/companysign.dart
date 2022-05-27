import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../shared/components/components/matrialbutton/buttons.dart';
import '../../shared/components/components/textformfield/defaulttextform.dart';

class Companysignup extends StatefulWidget {
  const Companysignup({Key? key}) : super(key: key);

  @override
  State<Companysignup> createState() => _CompanysignupState();
}

class _CompanysignupState extends State<Companysignup> {
  bool passwordcom=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Column(

                  children: [
                    SizedBox(height: 20,),

                Text(
                    'Create your company account'
                          ,style: TextStyle(

                  fontSize: 23,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
            ),
                ),
                SizedBox(height: 5,),
                Text(
                    'on our opportunities'
                        ,style: TextStyle(
                  fontSize: 23,
                    fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
                ),
                SizedBox(height: 30,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defaulttextform(
                      labeltext: 'Company name',
                      passwordhidden: false,
                      prefixicon: Icon(Icons.apartment)
                    ),
                SizedBox(height: 5,),

                defaulttextform(
                  labeltext: 'First name',
                  passwordhidden: false,
                    prefixicon: Icon(Icons.person),
                ),
                    SizedBox(height:5,),
                defaulttextform(
                  labeltext: 'Last name',
                  passwordhidden: false,
                    prefixicon: Icon(Icons.person),
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
                    SizedBox(height: 5,),

                defaulttextform(
                  labeltext: "Position / job title",
                  passwordhidden: false,
                    prefixicon: Icon(Icons.work)
                ),
                    SizedBox(height: 5,),
                defaulttextform(
                  labeltext: 'Email',
                  passwordhidden: false,
                    prefixicon: Icon(Icons.mail)
                ),
                    SizedBox(height: 5,),
                defaulttextform(
                    labeltext: 'Password',
                    passwordhidden: passwordcom,
                    prefixicon: Icon(Icons.password),
                  suffixicon: IconButton(onPressed: (){
                    setState(() {
                      passwordcom=!passwordcom;
                    });
                  },
                      icon: passwordcom?Icon(Icons.visibility_off) : Icon(Icons.visibility))
                  
                ),
                    SizedBox(height: 5,),
                    defaultButton(text: 'SIGN UP', Function: (){},color: (0xFF0969C3),width: 250,),
                  ],
                ),
                  ],
                ),

              ],
            )
        ),
      ),

    );
  }
}
