import 'package:flutter/material.dart';
import 'package:hire_me/bottomNavBar.dart';
import 'package:hire_me/home.dart';
import 'package:hire_me/partner_detail_form.dart';
import 'package:hire_me/profile.dart';
import 'package:hire_me/sign_up.dart';
import 'package:hire_me/sing_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/signin',
      routes: {
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/partnerDetailForm': (context) => PartnerDetailForm(),
        '/bottomnavabar': (context) => BottomNavBar(),
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
      },
      title: 'HireMe!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    );
  }
}
