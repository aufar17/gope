import 'package:flutter/material.dart';
import 'package:gope/main.dart';
import 'package:gope/navigationbar.dart';
import 'package:gope/profile/about.dart';
import 'package:gope/profile/profilpicture.dart';
import 'package:gope/profile/settings.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.SecondaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            profilePicture(),

                Padding(padding: EdgeInsets.symmetric(horizontal: 55)),
                Container(
                  child: Text(
                    'Faturrahman',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: MyFont.PrimaryFont
                    ),
                  ),
                ),
            SizedBox(height: 40),
            Container(
              height: 260,
              color: MyColors.PrimaryColor.withOpacity(0.15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft ,
                    padding: EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: MyFont.PrimaryFont,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ProfileMenu(
                    text: 'My Account',
                    textstyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyFont.PrimaryFont,
                      color: Colors.black
                      
                   ) ,
                    icon: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.black,
                    ),
                    press: (){},
                  ),
              SizedBox(height: 10),
              ProfileMenu(
                text: 'Gope Pocket',
                textstyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyFont.PrimaryFont,
                      color: Colors.black
                   ) ,
                icon: Icon(
                  Icons.wallet_rounded,
                  size: 35,
                  color: Colors.black,
                ),
                press: (){},
              ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 350,
              color: MyColors.PrimaryColor.withOpacity(0.15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft ,
                    padding: EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      'Apps',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: MyFont.PrimaryFont,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ProfileMenu(
                    text: 'About',
                    textstyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyFont.PrimaryFont,
                      color: Colors.black
                   ) ,
                    icon: Icon(
                      Icons.info,
                      size: 35,
                      color: Colors.black,
                    ),
                    press: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About() ,
                      )
                      );
                    },
                  ),
              SizedBox(height: 10),
              ProfileMenu(
                text: 'Help',
                textstyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyFont.PrimaryFont,
                      color: Colors.black
                   ) ,
                icon: Icon(
                  Icons.help,
                  size: 35,
                  color: Colors.black,
                ),
                press: (){},
              ),
              SizedBox(height: 10),
              ProfileMenu(
                text: 'Settings',
                textstyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyFont.PrimaryFont,
                      color: Colors.black
                   ) ,
                icon: Icon(
                  Icons.settings,
                  size: 35,
                  color: Colors.black,
                ),
                press: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()
                    )
                    );
                },
              ),
              
              
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              indent: 30,
              endIndent: 30,
              thickness: 5,
            ),
            SizedBox(height: 20,),
            ProfileMenu(
              text: 'Logout',
              textstyle: TextStyle(
                color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyFont.PrimaryFont
                   ) ,
              icon: Icon(
                Icons.logout,
                color: Colors.red,
                size: 35,), 
              press: (){}
              ),
            Padding(padding: EdgeInsets.only(bottom: 35)),

            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: MyFont.PrimaryFont
              ),
              ),
            
            SizedBox(height: 5,),
            Text(
              'GOPE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: MyFont.PrimaryFont
              ),
              ),

            Padding(padding: EdgeInsets.only(bottom: 20)),
            
            
          ],
        ),
      ),
      bottomNavigationBar: Navbar(navIndex: 2,),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.textstyle,
    required this.icon, 
    required this.press,
  });

  final String text;
  final TextStyle textstyle;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          fixedSize: Size(400, 80)
        ),
        child: Row(
          children: [
            icon, 
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: textstyle,
              )
              ),
              Icon(Icons.arrow_forward_ios)
    
            
          ],
        )
        ),
    );
  }
}

