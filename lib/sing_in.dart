import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/common/softui.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

final _formKey = GlobalKey<FormState>();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          backgroundColor: backgroundcolor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome\n back.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Raleway'),
                  ),
                  SoftField(
                    labeltext: "Email",
                  ),
                  SoftField(
                    labeltext: "password",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign in",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway')),
                      SoftIcon(
                        icon: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            child: Icon(Icons.arrow_forward)),
                        radius: 30,
                      ),
                    ],
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/signup');
                      },
                      child: AutoSizeText(
                        "Don't have an account?\nSign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                            fontFamily: 'Raleway',
                            decoration: TextDecoration.underline),
                        maxFontSize: 20,
                        minFontSize: 15,
                      ),
                    ),
                  ))
                ],
              ),
            ),
          )),
    );
  }
}
