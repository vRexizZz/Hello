import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irst_project/home_screen.dart';

import 'Screentwo.dart';

class Bar extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Barstate();
  }

}
class Barstate extends State<Bar>
{
  List<Widget>nvb=[
    Test(),
    Screentwo({}),
  ];
  int selecteditem=1;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        // appBar: AppBar(elevation: 0,),
          drawer: const Drawer(
            backgroundColor: Colors.blue,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selecteditem,
            onTap: (value){
              setState(() {
                selecteditem=value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.mail),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: '')
            ],
          ),
          appBar: AppBar(),


          body:nvb.elementAt(selecteditem),


      );
  }
}