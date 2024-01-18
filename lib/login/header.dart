import 'package:flutter/material.dart';

class HeaderSignIn extends StatelessWidget {
  const HeaderSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.5,
        child: ClipPath(
          clipper: ClipperUp(),
          child: Container(
            height: 270,
            width: double.infinity,
            color: Colors.blue[300],
          
          ),
        ),
      );
    
  }
}


class BottomSignIn extends StatelessWidget {
  const BottomSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.5,
        child: Transform.rotate(
          angle: 180 * 3.1415926535 / 180,
          child: ClipPath(
            clipper: ClipperUp(),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue[300],
              
            
            ),
          ),
        ),
      );
  }
}



class ClipperUp extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firststart = Offset(size.width/5, size.height);
    var firstend = Offset(size.width/2.25, size.height-50.0);
    path.quadraticBezierTo(firststart.dx, firststart.dy, firstend.dx, firstend.dy);

    var secondstart = Offset(size.width - (size.width /3.24), size.height - 105 );
    var secondend =  Offset(size.width , size.height - 10);
    path.quadraticBezierTo(secondstart.dx, secondstart.dy, secondend.dx, secondend.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}





