import 'package:flutter/material.dart';

class DribbleTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  const DribbleTextWidget(
      {Key? key, required this.text, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(fontSize: fontSize, color: Colors.black),
    );
  }
}

class DribbleRegisterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Not a member?",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.black, fontSize: 15.0),
        ),
        const SizedBox(width: 3.0),
        Text(
          "Register now",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.blue, fontSize: 15.0),
        ),
      ],
    );
  }
}

class DribbleRichText extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final Color colors;
  final double fontSize;
  const DribbleRichText(
      {Key? key,
      this.primaryText = "",
      this.colors = Colors.grey,
      this.fontSize = 25.0,
      this.secondaryText = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: '$primaryText\n',
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: colors, fontSize: 15.0),
        children: [
          TextSpan(
              text: secondaryText,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: colors, fontSize: 17.0)),
        ],
      ),
    );
  }
}
