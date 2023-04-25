import 'package:flutter/material.dart';

class DribbleDashLine extends StatelessWidget {
  const DribbleDashLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Expanded(
          child: Divider(
            indent: 40.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
        Text(
          "Or continue with ",
          style: TextStyle(color: Colors.black87, fontSize: 14.0),
        ),
        Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 40.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
