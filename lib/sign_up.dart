import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/rendering.dart';
import 'package:hire_me/common/kTextFieldLabel.dart';
import 'package:hire_me/common/kTextfield.dart';
import 'package:hire_me/waveBG.dart';

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
    return Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: _formKey,
              child: Stack(
                children: <Widget>[
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
                              padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
                              child: KTextFeildLabel(
                                label: "Create an\nAccount",
                                size: 40,
                                color: Colors.black54,
                              )),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                              child: KTextFeildLabel(
                                label: "Username",
                                size: 25,
                                color: Colors.white,
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                            child: KTextField(
                              hint: "saitamaOPM",
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
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
                              padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 80, 0, 0),
                                    child: KTextFeildLabel(
                                      label: "Sign up as",
                                      size: 30,
                                      color: Colors.blue,
                                    )),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 80, 0, 0),
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.transparent)),
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/home');
                                        },
                                        color: Colors.blueAccent,
                                        textColor: Colors.white,
                                        child: Row(
                                          children: [
                                            Text("User".toUpperCase(),
                                                style: TextStyle(fontSize: 14)),
                                            Icon(EvaIcons.personOutline),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 80, 0, 0),
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.transparent)),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/partnerDetailForm');
                                        },
                                        color: Colors.lightBlueAccent,
                                        textColor: Colors.white,
                                        child: Row(
                                          children: [
                                            Text("Partner ".toUpperCase(),
                                                style: TextStyle(fontSize: 14)),
                                            Icon(EvaIcons.peopleOutline),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 60, 0, 30),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/signin');
                                },
                                child: AutoSizeText(
                                  "Already have an account?\nSign In",
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
        ));
  }
}

// Stack(
//               children: [
//                 WaveBGPage(
//                   backgroundColor: Colors.blue[300],
//                   color1: Colors.white10,
//                   color2: Colors.white24,
//                   color3: Colors.white30,
//                   color4: Colors.white54,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
//                         child: KTextFeildLabel(
//                           label: "Create an\nAccount",
//                           size: 40,
//                           color: Colors.black54,
//                         )),
//                     Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
//                         child: KTextFeildLabel(
//                           label: "Username",
//                           size: 25,
//                           color: Colors.white,
//                         )),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
//                       child: KTextField(
//                         hint: "saitamaOPM",
//                       ),
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
//                         child: KTextFeildLabel(
//                           label: "Email",
//                           size: 25,
//                           color: Colors.white,
//                         )),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
//                       child: KTextField(
//                         hint: "saitama@gmail.com",
//                       ),
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
//                         child: KTextFeildLabel(
//                           label: "Password",
//                           size: 25,
//                           color: Colors.white,
//                         )),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
//                       child: KTextField(
//                         hint: "********",
//                         obscureText: true,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.fromLTRB(10, 80, 0, 0),
//                               child: KTextFeildLabel(
//                                 label: "Sign Up",
//                                 size: 30,
//                                 color: Colors.blue,
//                               )),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.fromLTRB(20, 80, 0, 0),
//                                 child: RaisedButton(
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(18.0),
//                                       side: BorderSide(
//                                           color: Colors.transparent)),
//                                   onPressed: () {},
//                                   color: Colors.blueAccent,
//                                   textColor: Colors.white,
//                                   child: Text("User".toUpperCase(),
//                                       style: TextStyle(fontSize: 14)),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.fromLTRB(20, 80, 0, 0),
//                                 child: RaisedButton(
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(18.0),
//                                       side: BorderSide(
//                                           color: Colors.transparent)),
//                                   onPressed: () {},
//                                   color: Colors.lightBlueAccent,
//                                   textColor: Colors.white,
//                                   child: Text("Partner".toUpperCase(),
//                                       style: TextStyle(fontSize: 14)),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
//                       child: Center(
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.pushReplacementNamed(context, '/signin');
//                           },
//                           child: AutoSizeText(
//                             "Already have an account?\nSign In",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.blue,
//                                 decoration: TextDecoration.underline),
//                             maxFontSize: 20,
//                             minFontSize: 15,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
