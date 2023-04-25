import 'package:divyang_dribble_design/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DribbleSignInButton extends StatefulWidget {
  const DribbleSignInButton({Key? key}) : super(key: key);

  @override
  State<DribbleSignInButton> createState() => _DribbleSignInButtonState();
}

class _DribbleSignInButtonState extends State<DribbleSignInButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10.0),
      child: Material(
        elevation: 6,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          highlightColor: const Color.fromRGBO(252, 107, 104, 1.0),
          minWidth: MediaQuery.of(context).size.width,
          color: const Color.fromRGBO(252, 107, 104, 1.0),
          onPressed: () {
            FocusScope.of(context).unfocus();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DribbleHome()));
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Sign in',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}

class DribbleAuthButton extends StatefulWidget {
  final String authURL;
  const DribbleAuthButton({Key? key, required this.authURL}) : super(key: key);

  @override
  State<DribbleAuthButton> createState() => _DribbleAuthButtonState();
}

class _DribbleAuthButtonState extends State<DribbleAuthButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2.0, color: Colors.white)),
      child: Image.network(
        widget.authURL,
        errorBuilder: (c, o, s) {
          return const CupertinoActivityIndicator();
        },
      ),
    );
  }
}
