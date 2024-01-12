import 'package:flutter/material.dart';
import 'package:gope/main.dart';

class UsernameField extends StatelessWidget {
  final usernameController;
  final String usernameHintText;
  final bool usernameObscuretext;
  final Icon usernameIcon;
  

  const UsernameField({
    super.key,
    required this.usernameController,
    required this.usernameHintText,
    required this.usernameObscuretext,
    required this.usernameIcon,

    });

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: EdgeInsets.only(left: 15,right: 10),
                      child: TextField(
                        controller: usernameController,
                        enableSuggestions: true,
                        enabled: true,
                        showCursor: true,
                        obscureText: usernameObscuretext,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          icon: usernameIcon,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          fillColor: MyColors.SecondaryColor,
                          filled: true,     
                          hintText: usernameHintText,
                          hintStyle: TextStyle(
                            color: Colors.grey[600]
                            )                    
                      
                        ),
                      
                      
                      
                      ),
                    );
  }
}

class PasswordField extends StatelessWidget {
  final passwordController;
  final String passwordHintText;
  final bool passwordObscuretext;
  final Icon passwordIcon;
  final Icon passwordsuffixIcon;
  

  const PasswordField({
    super.key,
    required this.passwordController,
    required this.passwordHintText,
    required this.passwordObscuretext ,
    required this.passwordIcon, 
    required this.passwordsuffixIcon,

    });

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: EdgeInsets.only(left: 15,right: 10),
                      child: TextField(
                        controller: passwordController,
                        enableSuggestions: true,
                        enabled: true,
                        showCursor: true,
                        obscureText: passwordObscuretext,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          icon: passwordIcon,
                          suffix: passwordsuffixIcon ,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          fillColor: MyColors.SecondaryColor,
                          filled: true,     
                          hintText: passwordHintText,
                          hintStyle: TextStyle(
                            color: Colors.grey[600]
                            ),
                        ),
                        
                      
                      
                      
                      ),
                    );
  }
}