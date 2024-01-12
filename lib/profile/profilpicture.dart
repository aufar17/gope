import 'package:flutter/material.dart';
import 'package:gope/main.dart';

class profilePicture extends StatelessWidget {
  const profilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80,left: 140,right: 140,bottom: 40),
      child: SizedBox(
        height: 120,
        width: 120,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircleAvatar(
              backgroundColor: MyColors.PrimaryColor),
            Positioned(
              bottom: -1,
              right: 2,
              child: SizedBox(
                height: 46,
                width: 46,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.black,
                    size: 25,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: CircleBorder(),
                      side: BorderSide(color: Colors.white)
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}