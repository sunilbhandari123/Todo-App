import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(
                    height: 48.0,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      Email = value;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter your password.',
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                          color: Colors.lightBlueAccent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30.0)),
                          elevation: 5.0,
                          child: MaterialButton(
                              onPressed: () async {
                                try {
                                  final user =
                                      await _auth.signInWithEmailAndPassword(
                                          email: Email, password: password);
                                  if (user != null) {
                                    Navigator.pushNamed(context, Home.id);
                                  }
                                } catch (e) {
                                  print(e);
                                }
                              },
                              minWidth: 200.0,
                              height: 42.0,
                              child: const Text(
                                'Log In',
                                style: TextStyle(color: Colors.black),
                              ))))
                ])));
  }
}
