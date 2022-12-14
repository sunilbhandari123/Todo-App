import 'package:flutter/material.dart';
import 'package:todoapp/todoapp.dart';
import 'package:todoapp/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'RegistrationScreen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  late String Email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Center(
                  child: Text(
                'Register',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 60.0,
              ),
              TextField(
                onChanged: (value) {
                  Email = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 26.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(onPressed: () async {
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: Email, password: password);
                      if (newUser != null) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                    } catch (e) {
                      print(e);
                    }},
                    minWidth:
                    200.0,
                    height:
                    42.0,
                    
                    child:const Text(
                      'Register',
                      style: TextStyle(color: Colors.black),
                    )
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
