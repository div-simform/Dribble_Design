import 'package:flutter/material.dart';

class DribbleWallpaper extends StatelessWidget {
  const DribbleWallpaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 360,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        image: const DecorationImage(
          image: AssetImage('assets/img.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
