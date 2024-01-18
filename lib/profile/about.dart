import 'package:flutter/material.dart';
import 'package:gope/main.dart';

// ignore: must_be_immutable
class About extends StatelessWidget {
  About({super.key});

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
              'About',
              style: TextStyle(
                color: Colors.white,
                fontFamily: MyFont.PrimaryFont,
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset(
                  'assets/image/orihitam.png',
                  height: 200,
                  width: 200,
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'GOPE merupakan platform Environtmental Care berbasis Mobile yang bertujuan untuk mendukung praktik daur ulang dan melestarikan lingkungan dari limbah sampah, Aplikasi ini menawarkan fitur utama cara pengelolaan berbagai limbah dan bank sampah. Bank sampah berfungsi untuk mengelola sampah yang terkumpul dari masing masing user dan memberikan benefit kepada user dari hasil pengelolaan sampah yang kami lakukan, keberhasilan kebersihan lingkungan dengan bantuan para pengguna aplikasi, yang diberikan benefit berupa reward uang. Tahap selanjutnya, kami akan bekerja sama dengan organisasi yang memiliki fasilitas pendaurulangan sampah dan hasilnya akan menjadi produktif bagi developer juga bagi user. Ini merupakah salah satu solusi terbaik yang kami temukan untuk menjaga kesehatan lingkungan dan membuat masyarakat lebih menghargai sampah.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: MyFont.PrimaryFont,
                      fontSize: 20
                    ) ,
                    ),
                ),
                SizedBox(height: 80,),
                Text('OURS',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: MyFont.PrimaryFont,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 40,),
                Column(
                  children: [
                    Ours(
                      namaOurs: 'Hikmal Ananta Putra',
                      jobOurs: 'Bussiness Development',
                      imageOurs:'assets/image/hikmal.jpeg' ,
                    ),
                    SizedBox(height: 20,),
                    Ours(
                      namaOurs: 'Hanif Faturrhaman',
                      jobOurs: 'UI/UX Designer',
                      imageOurs:'assets/image/hanif.jpg' ,
                    ),
                    SizedBox(height: 20,),
                    Ours(
                      namaOurs: 'Muammar Aufar Prasetya',
                      jobOurs: 'FrontEnd Developer',
                      imageOurs:'assets/image/aufar.jpeg' ,
                    ),
                    SizedBox(height: 20,),
                    Ours(
                      namaOurs: 'Tri Anung Nugroho',
                      jobOurs: 'BackEnd Developer',
                      imageOurs:'assets/image/anung.jpeg' ,
                    ),
                    SizedBox(height: 40,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Ours extends StatelessWidget {
  final String namaOurs;
  final String jobOurs;
  final String imageOurs;
  

  const Ours({
    super.key, 
    required this.namaOurs,
    required this.jobOurs,
    required this.imageOurs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageOurs),         
            ),
          SizedBox(width: 20,),  
                    
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              namaOurs,
              style: TextStyle(
                fontSize: 20,
                fontFamily: MyFont.PrimaryFont,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              jobOurs,
              style: TextStyle(
                fontSize: 20,
                fontFamily: MyFont.PrimaryFont,
                fontStyle: FontStyle.italic,
              ),
            
            ),
            
          ],
        ),
        ] 
      ),
    );
  }
}

