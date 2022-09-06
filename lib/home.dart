import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/buttons.dart';

class Homme extends StatelessWidget {
   final items = <Widget>[
    const Icon(Icons.home, size: 25),
    
    const Icon(Icons.add_box_rounded, size: 25),
    const Icon(Icons.settings, size: 25),
   
  ];
  static const String id = 'Homme';
  int index = 0;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                 Text("Today's Schedule",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35)),
                 SizedBox(
                  height: 30,
                ),
                Row(
                  children:[
                  
                
                check(),
                SizedBox(width: 25,),
                Containers(),]),
                SizedBox(height: 30,),
                Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(),
          ]),
                
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(),
          ]),
          SizedBox(
            height: 30,
          ),
             
                
                
               
              ]),
              
        ]),
        bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: index,
        backgroundColor: Colors.grey,
        items: items,
        onTap: (index) {
          //Handle button tap
        },
      ),
        );
  }
}
