import 'package:flutter/material.dart';
import 'package:hire_me/common/kTextFieldLabel.dart';
import 'package:hire_me/common/kTextfield.dart';
import 'package:hire_me/waveBG.dart';

class PartnerDetailForm extends StatefulWidget {
  @override
  _PartnerDetailFormState createState() => _PartnerDetailFormState();
}

class _PartnerDetailFormState extends State<PartnerDetailForm> {
  final _formKey = GlobalKey<FormState>();
  String _ratingController;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: SafeArea(
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
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: KTextFeildLabel(
                            label: "Firstname",
                            size: 25,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: KTextField(),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: KTextFeildLabel(
                            label: "Lastname",
                            size: 25,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: KTextField(),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: KTextFeildLabel(
                            label: "Phone Number",
                            size: 25,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: KTextField(),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: KTextFeildLabel(
                            label: "Shop Name(if Any)",
                            size: 25,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: KTextField(),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: KTextFeildLabel(
                            label: "Profession",
                            size: 25,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: Container(
                          height: 60,
                          width: 500,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent))),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            value: _ratingController,
                            items: [
                              "Plumber",
                              "Carpenter",
                              "Tutor",
                              "Wielder",
                              "Painter",
                              "Electrician"
                            ]
                                .map((label) => DropdownMenuItem(
                                      child: Text(label.toString()),
                                      value: label,
                                    ))
                                .toList(),
                            hint: Text('Select your expertise'),
                            onChanged: (value) {
                              setState(() {
                                _ratingController = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

// child: Stack(
//             children: [
//               WaveBGPage(),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   WaveBGPage(),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
//                     child: KTextField(
//                       labelText: "Firstname",
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
//                     child: KTextField(
//                       labelText: "Lastname",
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
//                     child: KTextField(
//                       labelText: "Phone Number",
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
//                     child: KTextField(
//                       labelText: "saitama@gmail.com",
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
