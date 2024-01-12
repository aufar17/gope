import 'package:flutter/material.dart';
import 'package:gope/login/textfiled.dart';
import 'package:gope/main.dart';

class SignUp extends StatefulWidget {
   SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginpageState();
}

class _LoginpageState extends State<SignUp> {
  final  usernameController = TextEditingController();

  final  passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.PrimaryColor,
      body:  Padding(
        padding: EdgeInsets.symmetric(vertical: 200.0,horizontal: 10),
        child:  Column(
                  children: [
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Signika',
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
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fixedSize: Size(200, 70)
                         ),
                        
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w500
                          ),)),
                    ),
                    SizedBox(height: 40,),

                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 65),
                          child: Text(
                            'Do you have an account?',
                            style: TextStyle(
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
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w500
                          ),)),
                    ),
                      
                      ],
                    ),
                   


                  
                  ],
                ),
              
      
     )
      ); 
  }
}