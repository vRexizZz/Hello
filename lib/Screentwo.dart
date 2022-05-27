import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl_phone_field/intl_phone_field.dart';




class Screentwo extends StatefulWidget {
  Screentwo(Map<num, num> map);

  @override
  State<StatefulWidget> createState() {
    return Screentwostate();

  }
}

class Screentwostate extends State<Screentwo>
{
  bool passwordhidden=true;


  @override
  Widget build(BuildContext context) {



    return Container(
      child: Scaffold(
        appBar: AppBar(

        ),
        body:ListView(
          children: [
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      ''
                      ,style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text(
                        'your Age is : ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Text(
                        'your Wegiht is : '
                        ,style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextFormField(

                        obscureText: passwordhidden,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){

                            setState(() {
                              passwordhidden= !passwordhidden;


                            });

                          }
                            , icon: passwordhidden ? Icon(Icons.visibility):Icon(Icons.visibility_off) ,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),

                        ),


                      ),

                    ),
                    SizedBox(height: 60,),
                    Container(
                      width: 300,
                      child:IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ) ,
                    )










                  ]
              ),
            ),

          ],
        )

      ),
    );

  }

}
