import 'package:flutter/material.dart';

import '../pages/dribble.dart';

class DribbleSwapWidget extends StatelessWidget {
  const DribbleSwapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: Colors.white,
          border: Border.all(color: Colors.white, width: 2.0)),
      child: Row(
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const SizedBox.expand(
              child: Center(
                child: Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DribbleDesign()));
            },
            child: Container(
              width: 145,
              decoration: const BoxDecoration(),
              child: const SizedBox.expand(
                child: Center(
                  child: Text(
                    'Sign in',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
