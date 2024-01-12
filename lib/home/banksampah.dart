import 'package:flutter/material.dart';

class GopeSetor extends StatelessWidget {
  const GopeSetor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                margin: const EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade600,
                   borderRadius: BorderRadius.circular(18.0),
                   boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                     offset: const Offset(0, 8)
                    )
                   ]
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Icon(
                        Icons.clean_hands,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                    const SizedBox(width: 30.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 18.0)),
                        Text(
                          'GOPE Setor',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Text(
                          'Sortir,Kemas,Setorkan',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                    
                  ],
                )

              );
    }
}

class GopeBank extends StatelessWidget {
  const GopeBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    
    height: 100,
    margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
    decoration: BoxDecoration(
    color: Colors.lightGreen[600],
    borderRadius: BorderRadius.circular(18.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 5,
        offset: const Offset(0, 8),
      )
    ],
  ),
  child:const Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: Icon(
          Icons.houseboat_rounded,
          color: Colors.white,
          size: 80,
        ),
      ),
      SizedBox(width: 30.0),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GOPE Bank',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Temukan GOPE Bank terdekat untuk setor sampah',
              maxLines: 2,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

  }
}
              