import 'package:flutter/material.dart';
import 'package:gope/home/banksampah.dart';
import 'package:gope/main.dart';
import 'package:gope/navigationbar.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.SecondaryColor,
      appBar: AppBar(
          title: Text(' WELCOME!',
            style: TextStyle(
              color: Colors.white,
              fontFamily: MyFont.PrimaryFont,
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0
              
            ) ,
          ),
          backgroundColor: MyColors.PrimaryColor,
         
        ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: MyColors.PrimaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.asset(
                  'assets/image/miniputih.png',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 200,
                  ),
              )
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 90.0,left: 40.0),
                child: Text(
                  'Rustanto',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: MyFont.PrimaryFont,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0),
                child: Text(
                  'fakrulroji@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: MyFont.PrimaryFont,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 70,
                width: 380,
                margin: const EdgeInsets.only(top: 170.0, left: 20.0,right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 8)
                  )
                  ],
                ),
                child: Row(
                  children: [ // Kotak Progress
                    Row(  
                      children: [   //Kotak Point
                       SizedBox(width: 4.0),
                        Icon(
                            Icons.attach_money_outlined,
                            size: 38.0,
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GOPE Point',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: MyFont.PrimaryFont
                              ) ,
                            ),
                              Text(
                                '120',
                                style: TextStyle(
                                fontSize: 17,
                                fontFamily: MyFont.PrimaryFont,
                                fontWeight: FontWeight.w700,
                                color: Colors.amber
                              ) ,
                              ),
                          ],
                        ),
                      ],
                     ),
                    SizedBox(width: 4.0),
                    VerticalDivider(
                      color: Colors.grey[700],
                      width: 20.0,
                      thickness: 2.5,
                    ),
                    SizedBox(width: 3,),
                    Row(  
                      children: [   //Kotak Point
                        Icon(
                            Icons.handshake,
                            size: 38.0,
                          ),
                          SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Disetor',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: MyFont.PrimaryFont
                              ) ,
                            ),
                               Text(
                                '120',
                                style: TextStyle(
                                fontSize: 17,
                                fontFamily: MyFont.PrimaryFont,
                                fontWeight: FontWeight.w700
                              ) ,
                              ),
                            
                          ],
                        ),
                      ],
                    ),
                     SizedBox(width: 4.0),
                        VerticalDivider(
                      color: Colors.grey[700],
                      width: 30.0,
                      thickness: 2.5,
                      ),
                    Row(  
                      children: [   //Kotak Point
                        Icon(
                            Icons.qr_code_scanner_rounded,
                            size: 40.0,

                          ),
                          SizedBox(width: 8,),
                        Text(
                          'Scan',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: MyFont.PrimaryFont
                          ),
                          )
                      ],
                    ),
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0,top: 40.0),
                child: Text('BANK SAMPAH',
                style: TextStyle(
                  fontFamily: MyFont.PrimaryFont,
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                ),
                ),
              ),
             GopeSetor(),
             SizedBox(height: 15,),
             GopeBank()
            ],
          )
        ],
      ),
      bottomNavigationBar: Navbar(navIndex: 0,), 
    );
  }
}


