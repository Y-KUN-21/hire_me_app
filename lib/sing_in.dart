import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:hire_me/common/kTextFieldLabel.dart';
import 'package:hire_me/common/kTextfield.dart';
import 'package:hire_me/waveBG.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

Color green = Color.fromRGBO(104, 237, 198, 0.5);

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                WaveBGPage(
                  backgroundColor: Colors.blue[300],
                  color1: Colors.white10,
                  color2: Colors.white24,
                  color3: Colors.white30,
                  color4: Colors.white54,
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                            child: KTextFeildLabel(
                              label: "Welcome\nBack",
                              size: 40,
                              color: Colors.black54,
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                            child: KTextFeildLabel(
                              label: "Email",
                              size: 25,
                              color: Colors.white,
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                          child: KTextField(
                            hint: "saitama@gmail.com",
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                            child: KTextFeildLabel(
                              label: "Password",
                              size: 25,
                              color: Colors.white,
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                          child: KTextField(
                            hint: "********",
                            obscureText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 80, 0, 0),
                                  child: KTextFeildLabel(
                                    label: "Sign In",
                                    size: 30,
                                    color: Colors.blue,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 80, 0, 0),
                                child: FloatingActionButton(
                                    elevation: 10,
                                    child: Icon(EvaIcons.logInOutline),
                                    onPressed: () {
                                       Navigator.pushNamed(context, '/home');
                                    }),
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/signup');
                              },
                              child: AutoSizeText(
                                "Don't have an account?\nSign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                                maxFontSize: 20,
                                minFontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
