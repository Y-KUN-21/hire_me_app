import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/rendering.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/common/softui.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

Color green = Color.fromRGBO(104, 237, 198, 0.5);

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          backgroundColor: backgroundcolor,
          body: SafeArea(
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Create an\n account.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SoftField(
                    labeltext: "username",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SoftField(
                    labeltext: "email",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SoftField(
                    labeltext: "password",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign up",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Raleway')),
                        SoftIcon(
                          icon: IconButton(
                              icon: Icon(EvaIcons.arrowForwardOutline),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              }),
                          radius: 30,
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/signin');
                      },
                      child: AutoSizeText(
                        "Already have an account?\nSign in",
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
