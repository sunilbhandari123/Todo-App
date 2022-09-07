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
                Containers(icon: Icon(Icons.alarm ,), text: 'Wake Up', textt: '5AM'
                  
                ,)]),
                SizedBox(height: 30,),
                Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(icon: Icon(
              Icons.boy_rounded
            ), text: 'GYM', textt: '6AM',),
          ]),
                
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(icon: Icon(
              Icons.book
            ), text: 'Read', textt: '9AM',),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(icon: Icon(
              Icons.launch,
            ), text: 'Lunch', textt: '10AM',),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(icon: Icon(Icons.bed,), text: 'REST', textt: '11AM',),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(icon: Icon(
              Icons.code
            ), text: 'Code', textt: '1PM',),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(icon: Icon(
              Icons.breakfast_dining,
            ), text: 'Snacks', textt: '4PM',),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            check(),
            SizedBox(
              width: 25,
            ),
            Containers(icon: Icon(
              Icons.nordic_walking
            ), text: 'Walk', textt: '6PM',),
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
