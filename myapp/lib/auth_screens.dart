import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreens extends StatefulWidget {
  @override
  _AuthScreensState createState() => _AuthScreensState();
}

class _AuthScreensState extends State<AuthScreens> {
  final _emailText = TextEditingController();
  final _passwordText = TextEditingController();
  String _emailError;
  String _passwordError;

  Future<void> _loginUser() async {
    if (_emailText.text.length <= 0) {
      setState(() {
        _emailError = "Enter a Email";
      });
      return;
    }
    if (!_emailText.text.contains("@")) {
      setState(() {
        _emailError = "Enter a Valid Email";
      });
      return;
    }
    if (_passwordText.text.length < 7) {
      setState(() {
        _passwordError = "Your password must be at least 6 characters !";
      });
      return;
    }
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailText.text,
        password: _passwordText.text,
      );
      print("You are Login Now");
    } catch (e) {
      print(e);
    }

    _emailError = null;
    _passwordError = null;
  }

  Future<void> _registerUser() async {
    if (_emailText.text.length <= 0) {
      setState(() {
        _emailError = "Enter a Email";
      });
      return;
    }
    if (!_emailText.text.contains("@")) {
      setState(() {
        _emailError = "Enter a Valid Email";
      });
      return;
    }
    if (_passwordText.text.length < 7) {
      setState(() {
        _passwordError = "Your password must be at least 6 characters !";
      });
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailText.text,
        password: _passwordText.text,
      );
    } catch (e) {
      print(e);
    }
    _emailError = null;
    _passwordError = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auth Screens"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                "ADD TODO NOW",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              TextField(
                controller: _emailText,
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  errorText: _emailError,
                ),
              ),
              TextField(
                controller: _passwordText,
                decoration: InputDecoration(
                  hintText: "Enter a Password",
                  errorText: _passwordError,
                ),
                enableSuggestions: false,
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      _loginUser();
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.green,
                  ),
                  RaisedButton(
                    onPressed: () {
                      _registerUser();
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
