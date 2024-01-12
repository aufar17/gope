import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class Navbar extends StatefulWidget {
  final int navIndex;

  Navbar({Key? key, required this.navIndex}):super(key:key);

  @override
  State<Navbar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<Navbar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.navIndex;
  }
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .200,
        decoration: BoxDecoration(
          color: Colors.white60,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.12),
              blurRadius: 30,
              offset: Offset(0, 8),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .09), 
          itemBuilder: (context, index) => InkWell(
            onTap: (){ 
              Navigator.of(context).pushReplacementNamed(routespage[index]);
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                Center(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOutCubicEmphasized,
                    height: index == currentIndex ? displayWidth * .15 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                      ? HexColor("00ce4b").withOpacity(0.2)
                      : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1,),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: Duration(seconds: 2),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(duration: Duration(seconds: 3),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width:
                          index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          if (index < listOfIcons.length)
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: (index == currentIndex && currentIndex >= 0 && currentIndex < listOfIcons.length) 
                            ? Colors.green.shade400 
                            : Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                  )
              ],
            ),
          ),
        ),

    );

  }

List<String> routespage = [
  '/homepage',
  '/articlepage',
  '/profilepage',
];

List<String> listOfStrings = [
  'Home',
  'Article',
  'Profile',
];

List<IconData> listOfIcons = [
  Icons.home,
  Icons.article,
  Icons.person,
];


}


