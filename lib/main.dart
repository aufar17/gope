import 'package:flutter/material.dart';
import 'package:gope/article/article.dart';
import 'package:gope/home/homepage.dart';
import 'package:gope/login/signin.dart';
import 'package:gope/login/signup.dart';
import 'package:gope/profile/profile.dart';
import 'package:hexcolor/hexcolor.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      // initialRoute: '/homepage',
      routes:{
        'signin':(context) => SignIn(),
        'signup': (context) => SignUp(),
        '/homepage' :(context) => Homepage(),
        '/articlepage' :(context) => Articlepage(),
        '/profilepage' :(context) => Myprofile(),
      } ,
      


    
    );
  }
}

class MyColors {
  static Color PrimaryColor = HexColor('#00ce4b');
  static Color SecondaryColor = HexColor('DDE9DE');


}