import 'package:flutter/material.dart';
import 'package:hire_me/bottomNavBar.dart';
import 'package:hire_me/credentials/sign_up.dart';
import 'package:hire_me/credentials/sing_in.dart';
import 'package:hire_me/home/home.dart';
import 'package:hire_me/profile/profile.dart';

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
        '/bottomnavbar': (context) => BottomNavBar(),
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
      },
      title: 'HireMe!',
      debugShowCheckedModeBanner: false,
    );
  }
}
