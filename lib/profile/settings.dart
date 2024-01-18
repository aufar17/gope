import 'package:flutter/material.dart';
import 'package:gope/main.dart';
import 'package:hexcolor/hexcolor.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  

  @override
  State<Settings> createState() => _SettingsState();
}

bool iconbool = false;

IconData iconlight = Icons.sunny;
IconData icondark = Icons.nights_stay_rounded;

ThemeData lighttheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: MyColors.SecondaryColor,
    primary: MyColors.PrimaryColor
  )
);

ThemeData darktheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: MyColors.ThirdColor
  )

);


class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.SecondaryColor,
      appBar: AppBar(
        backgroundColor: MyColors.PrimaryColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
            size: 30,
            
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontFamily: MyFont.PrimaryFont,
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20),
        child: Row(
          children: [
            Icon(Icons.brightness_6, size: 35,),
            SizedBox(width: 20,),
            Text(
              'Theme',
              style: TextStyle(
                fontSize: 25,
                fontFamily: MyFont.PrimaryFont,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(width: 210,),
            
            // IconButton(
            //   onPressed: () {
            //     setState(() {
            //       iconbool = !iconbool;
            //     });
            //   }, 
            //   icon: I)
            

          ],
        ),
      ),
    );
  }
}