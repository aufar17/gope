import 'package:flutter/material.dart';
import 'package:gope/home/homepage.dart';
import 'package:gope/login/textfiled.dart';
import 'package:gope/main.dart';

import 'header.dart';

class SignIn extends StatefulWidget {
   const SignIn({super.key});

  @override
  State<SignIn> createState() => _LoginpageState();
}

class _LoginpageState extends State<SignIn> {
  final  usernameController = TextEditingController();
  final  passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.SecondaryColor,
      body:  Stack(
        children: [
          HeaderSignIn(),
          ClipPath(
            clipper: ClipperUp(),
            child: Container(
              height: 230,
              width: double.infinity,
              color: MyColors.PrimaryColor,
            
            ),
          ),

          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 680),
              child: Image.asset('assets/image/oriputih.png',
              fit: BoxFit.fill,
              height: 70,
              width: 180,),
            ),
          ),

          Padding(
          padding: EdgeInsets.only(top: 280.0,right: 10,left: 10),
          child:  Column(
                    children: [
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: MyFont.PrimaryFont,
                          letterSpacing: 2.0
                        ) ,
                      ),
                      SizedBox(height: 40.0,),
                      UsernameField(
                        usernameController: usernameController,
                        usernameHintText: 'Username',
                        usernameObscuretext: false,
                        usernameIcon: Icon(
                          Icons.person,
                         size: 30,
                         ),
                      ),
                      SizedBox(height: 10.0,),
                      PasswordField(
                        passwordController: passwordController,
                        passwordHintText: 'Password',
                        passwordObscuretext: false,
                        passwordIcon: Icon(
                          Icons.key,
                          size: 30,
                          ),
                        passwordsuffixIcon: Icon(Icons.visibility, size: 20,)
                      ),
                      SizedBox(height: 40.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => Homepage())
                            );
                          }, 
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[200],
                            
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            fixedSize: Size(200, 70)
                           ),
                          
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: MyFont.PrimaryFont,
                              fontWeight: FontWeight.w500
                            ),)),
                      ),
                      SizedBox(height: 40,),
        
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 35),
                            child: Text(
                              'Have you created an account yet?',
                              style: TextStyle(
                                fontFamily: MyFont.PrimaryFont,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[200],
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: Size(70, 40)
                           ),
                          
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: MyFont.PrimaryFont,
                              fontWeight: FontWeight.w500
                            ),)),
                      ),
                        
                        ],
                      ),
                    ],
                  ),
          ),
           Container(
            margin: EdgeInsets.only(top: 740),
            child: BottomSignIn()
            ),
            Container(
            margin: EdgeInsets.only(top: 780),
            child: Transform.rotate(
              angle: 180 * 3.1415926535 / 180,
              child: ClipPath(
              clipper: ClipperUp(),
              child: Container(
                height: 200,
                width: double.infinity,
                color: MyColors.PrimaryColor,
              ),
                        ),
            ),
            ),
                
        ],
             ),
      );
      
  }
}



