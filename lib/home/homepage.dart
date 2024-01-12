import 'package:flutter/material.dart';
import 'package:gope/home/banksampah.dart';
import 'package:gope/navigationbar.dart';
import 'package:hexcolor/hexcolor.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("DDE9DE"),
      appBar: AppBar(
          title: Text(' WELCOME!',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Signika",
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0
              
            ) ,
          ),
          backgroundColor: HexColor("00ce4b"),
         
        ),
      body: Stack(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            color: HexColor("00ce4b"),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 210)),
              Icon(
                Icons.money,
                size: 50.0,
              ),
              SizedBox(width: 5.0,),
              Container(
                child: Text(
                  'GOPE',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Signika',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0
                
                  ) ,
                  ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 65.0,left: 40.0),
                child: Text(
                  'Rustanto',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Signika',
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0),
                child: Text(
                  'fakrulroji@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Signika',
                    fontWeight: FontWeight.w500
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
                margin: const EdgeInsets.only(top: 140.0, left: 20.0,right: 20.0),
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
                                fontWeight: FontWeight.w700
                              ) ,
                            ),
                              Text(
                                '120',
                                style: TextStyle(
                                fontSize: 17,
                                fontFamily: "Signika",
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
                                fontWeight: FontWeight.w700
                              ) ,
                            ),
                               Text(
                                '120',
                                style: TextStyle(
                                fontSize: 17,
                                fontFamily: "Signika",
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
                            fontWeight: FontWeight.w700
                          ),
                          )
                      ],
                    ),
                  ],
                )
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0,top: 40.0),
                child: Text('BANK SAMPAH',
                style: TextStyle(
                  fontFamily: 'Signika',
                  fontSize: 30,
                  fontWeight: FontWeight.w900
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


// class ClipPathCustom extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, size.height - 30);

//     path.quadraticBezierTo(
//       size.width / 2, 
//       size.height, 
//       size.width, 
//       size.height - 30
//       );

//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {return false;}  

// }