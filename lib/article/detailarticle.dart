import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gope/main.dart';

// ignore: must_be_immutable
class DetailArticle extends StatelessWidget {
   final String image;
   final String name;
   final String deskripsi;

   DetailArticle({Key? key, 
   required this.image,
   required this.name,
   required this.deskripsi
   }) : super(key: key);
   

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
              'GOPETICLE',
              style: TextStyle(
                color: Colors.white,
                fontFamily: MyFont.PrimaryFont,
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.topCenter,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
                height: 190,
                width: 170,
                ), 
            ),
            SizedBox(height: 10,),
            Text(
              name,
              style: TextStyle(
                fontFamily: MyFont.PrimaryFont,
                fontSize: 25,
                fontWeight: FontWeight.w600
              ),
              ),
            SizedBox(height: 50,),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  deskripsi,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: MyFont.PrimaryFont,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

