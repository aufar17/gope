import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gope/main.dart';
import 'package:gope/navigationbar.dart';


// ignore: must_be_immutable
class Articlepage extends StatelessWidget {
   Articlepage({super.key});

   List GopeticleNames = [
    "Zero Waste",
    "Kind of waste ",
    "New Energy",
    "Reuse, Reduce, Recycle",
   ];

   List<String> GopeticleImage = [
    'assets/image/zerowaste.png',
    'assets/image/ecofriendly.png',
    'assets/image/savetheplanet.png',
    'assets/image/3r.png',
    'assets/image/ORI.png',
    'assets/image/gogreen.png',


   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.SecondaryColor,
      appBar: AppBar(
        backgroundColor: MyColors.PrimaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              'GOPEDIA',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w700
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'GOPENEWS',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Signika',
                    fontWeight: FontWeight.w700,
        
                  ),
                  ), 
              ),
              SizedBox(height: 20),
             CarouselSlider(
              items: [
                GopeNews(),
                GopeNews(),
                GopeNews(),
                GopeNews(),
                GopeNews(),
                GopeNews()
              ], 
              options: CarouselOptions(
                height: 275,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias
              )
              
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Text(
                    'GOPETICLE',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Signika',
                      fontWeight: FontWeight.w700,
                    ),
                    ), 
                ),
              ),
              SizedBox(height: 20,),
              GridView.builder(
                itemCount: GopeticleNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 120 - 25) / (4 *240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical:30 ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF), 
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(GopeticleImage[index],
                              width: 100,
                              height: 100,
                              ),
                              
                            ),
                            SizedBox(height: 10,),
                            Text(
                              GopeticleNames[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Signika',
                                color: Colors.black.withOpacity(0.6),
        
                              ),
                              ),                            
                          ],
                        ),
        
                      ),
                    );
                  },
              ),
              Padding(padding: EdgeInsets.only(bottom: 20))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(navIndex: 1),
    );
  }
}

class GopeNews extends StatelessWidget {
  // final Image image;



  const GopeNews({
    super.key,
    // required this.image,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
            color: MyColors.PrimaryColor,
              borderRadius: BorderRadius.circular(20)
            ),
            height: 150,
            width: 300,
            padding:  EdgeInsets.all(0),
          ),
          SizedBox(height: 10,),

        Container(
          width: 250,
          child: Text(
            'From its medieval origins to the digital era, learn everything there is to know about the ubiquitous lorem ipsum passage.',
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Signika',
              fontWeight: FontWeight.w500,
            ),
            ),
        )
        ],
      ),
    );
  }
}