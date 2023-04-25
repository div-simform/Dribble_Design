import 'package:divyang_dribble_design/widgets/dribbleswap.dart';
import 'package:flutter/material.dart';
import '../widgets/dribbletext.dart';
import '../widgets/dribblewallpaper.dart';

class DribbleHome extends StatefulWidget {
  const DribbleHome({Key? key}) : super(key: key);

  @override
  State<DribbleHome> createState() => _DribbleHomeState();
}

class _DribbleHomeState extends State<DribbleHome> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin:
                const EdgeInsets.only(top: 40, right: 16, left: 16, bottom: 10),
            padding: const EdgeInsets.only(bottom: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: theme.highlightColor,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 3.5),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 10),
                DribbleWallpaper(),
                SizedBox(height: 30.0),
                DribbleRichText(
                  primaryText: "Discover your",
                  secondaryText: "Dream job here",
                  colors: Colors.black,
                ),
                SizedBox(height: 30.0),
                DribbleRichText(
                  primaryText: 'Explore all the most exiting jobs roles',
                  secondaryText: "based on your interest And study major",
                  colors: Colors.grey,
                ),
                SizedBox(height: 40.0),
                DribbleSwapWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
