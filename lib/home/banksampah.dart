import 'package:flutter/material.dart';
import 'package:gope/main.dart';

class GopeSetor extends StatelessWidget {
  const GopeSetor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                margin: const EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0),
                decoration: BoxDecoration(
                  color: MyColors.PrimaryColor,
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
                child:  Row(
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
                            fontFamily: MyFont.PrimaryFont,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Text(
                          'Collect, Complete, Convert ',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: MyFont.PrimaryFont,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
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
    color: MyColors.PrimaryColor,
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
  child:Row(
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
                fontFamily: MyFont.PrimaryFont,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                'Find the nearest GOPE Bank to deposit waste',
                maxLines: 2,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: MyFont.PrimaryFont,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
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
              