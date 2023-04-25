import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DribbleUserTextField extends StatefulWidget {
  final String hintText;
  const DribbleUserTextField({Key? key, required this.hintText})
      : super(key: key);

  @override
  State<DribbleUserTextField> createState() => _DribbleTextFieldState();
}

class _DribbleTextFieldState extends State<DribbleUserTextField> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(1.0, 1.0),
            blurRadius: 5.0,
            color: Colors.white.withOpacity(0.3),
          )
        ],
      ),
      child: TextField(
        textInputAction: TextInputAction.next,
        cursorColor: Colors.grey[500],
        decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class DribblePasswordTextField extends StatefulWidget {
  final String hintText;
  const DribblePasswordTextField({Key? key, required this.hintText})
      : super(key: key);

  @override
  State<DribblePasswordTextField> createState() =>
      _DribblePasswordTextFieldState();
}

class _DribblePasswordTextFieldState extends State<DribblePasswordTextField> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(1.0, 1.0),
              blurRadius: 5.0,
              color: Colors.white.withOpacity(0.3))
        ],
      ),
      child: TextField(
        cursorColor: Colors.grey[500],
        textInputAction: TextInputAction.done,
        obscuringCharacter: "*",
        obscureText: isSelected ? false : true,
        maxLength: 8,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          counter: const Offstage(),
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              color: Colors.grey[500],
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              icon: Icon(
                  !isSelected ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
