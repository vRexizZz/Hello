import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:irst_project/Screentwo.dart';
import 'package:splash_screen_view/splash_screen_view.dart';

class Test extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Teststate();
  }
}
class Teststate extends State<Test>
{
  bool color1 = true;
  double heghit=80;
  int age =10;
  double kg =40.000;
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(appBar: AppBar(title: Text('Bmi Calculator'),),backgroundColor: Colors.orange,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            color1=true;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage('images/man.png'),height: 90,width: 90,),
                              SizedBox(height: 10),
                              Text('Male',style: TextStyle(
                                fontSize: 20
                              ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color1? Colors.blue : Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            color1 = false;
                          });

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color1?  Colors.grey[400]:Colors.blue
                          ),
                          width: 150,
                          height: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  'images/woman.png',
                                ),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(height: 10,),
                              Text('Famale',style: TextStyle(
                                fontSize: 20
                              ),)
                            ],

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 20,bottom: 20,right: 20),
               child: Container(
                 width: 320,
                 height: 230,
                 decoration: BoxDecoration(
                     color: Colors.grey[400],
                     borderRadius: BorderRadius.circular(15)
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                         'HEIGHT',style: TextStyle(
                       fontSize: 30,fontWeight: FontWeight.bold
                     ),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('${heghit.round()}',style: TextStyle(
                           fontSize: 30,fontWeight: FontWeight.bold
                         ),),
                         SizedBox(width: 10,),
                         Text('cm',style: TextStyle(
                           fontSize: 25,fontWeight: FontWeight.bold
                         ),)
                       ],
                     ),
                     Slider(

                       value: heghit,
                       max: 200,
                       min: 50,
                       onChanged: (value){
                         setState(() {
                           heghit=value;
                         });
                       },
                     )
                   ],
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.bold
                            ),),
                            Text('${age}',style: TextStyle(
                                fontSize: 35,fontWeight: FontWeight.bold
                            ),),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                    if(age<10)
                                      {
                                        age=10;
                                      }
                                  });
                                },mini: true,
                                  child:Icon(
                                      Icons.remove
                                  ) ,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });

                                },mini: true,
                                  child:Icon(
                                      Icons.add
                                  ) ,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weghit',style: TextStyle(
                                fontSize: 25,fontWeight: FontWeight.bold
                            ),),
                            Text('$kg',style: TextStyle(
                                fontSize: 35,fontWeight: FontWeight.bold
                            ),),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    kg--;
                                    if(kg<20)
                                      {
                                        kg=20;
                                      }
                                  });
                                },mini: true,
                                  child:Icon(
                                    Icons.remove
                                  ) ,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    kg ++;
                                  });

                                },mini: true,
                                  child:Icon(
                                      Icons.add
                                  ) ,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                height: 55.5,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){
                    AwesomeDialog(
                      dialogBackgroundColor: Colors.grey[500],
                      context: context,
                      dialogType: DialogType.SUCCES,
                      animType: AnimType.SCALE,
                      title: 'Dialog Title',
                      desc: 'This email has create',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                },
                  child:Text('Calculater',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 18),) ,

              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}