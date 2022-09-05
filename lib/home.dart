import 'package:flutter/material.dart';
import 'package:todoapp/buttons.dart';

class Home extends StatelessWidget {
  static const String id = 'Home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
         Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Create New Todo',
            style: TextStyle(
                color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Task Title',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Task Title',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Task Type',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 20, 0)),
              bottton(text: 'Planned', colr: Colors.black, colour: Colors.grey, onTab: () {},),
              const SizedBox(
                width: 100,
              ),
              bottton(text: 'Important', colr: Colors.black, colour: Colors.grey, onTab: () {},),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Descreption',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  hintText: 'Descreption',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )),
            ),
          ),
          const SizedBox(height: 30,),
          const Text('Category',style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 20,
          ),
          Column(children: [
            Row(children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 20, 0)),
              bottton(
                text: 'Food',
                colr: Colors.black,
                colour: Colors.grey, onTab: () {  },
              ),
              const SizedBox(width: 100),
              bottton(
                text: 'Work',
                colr: Colors.black,
                colour: Colors.grey, onTab: () {  },
              ),
            ]),
            const SizedBox(height: 20),
            Row(children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 20, 0)),
              bottton(
                text: 'Study',
                colr: Colors.black,
                colour: Colors.grey, onTab: () {  },
              ),
              const SizedBox(width: 70),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 20, 0)),
              bottton(
                text: 'Extras',
                colr: Colors.black,
                colour: Colors.grey, onTab: () {  },
              ),
            ]),
          ]),
          const SizedBox(
            height: 40,
          ),
          bottton(text: 'Add Todo', colr: Colors.black, colour: Colors.white, onTab: () {  },)
        ]),
      ]),
    );
  }
}
