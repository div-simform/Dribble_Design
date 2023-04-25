// import 'package:divyang_dribble_design/pages/dribble.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DribbleTextWidget extends StatelessWidget {
//   final String text;
//   final double fontSize;
//   DribbleTextWidget({Key? key, required this.text, required this.fontSize})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       '$text',
//       style:
//           Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: fontSize),
//     );
//   }
// }
//
// class DribbleRegisterText extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "Not a member?",
//           style: Theme.of(context)
//               .textTheme
//               .bodySmall!
//               .copyWith(color: Colors.black, fontSize: 15.0),
//         ),
//         const SizedBox(width: 3.0),
//         Text(
//           "Register now",
//           style: Theme.of(context)
//               .textTheme
//               .bodySmall!
//               .copyWith(color: Colors.blue, fontSize: 15.0),
//         ),
//       ],
//     );
//   }
// }
//
// class DribbleDashLine extends StatelessWidget {
//   const DribbleDashLine({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Expanded(
//           child: Divider(
//             indent: 40.0,
//             endIndent: 10.0,
//             thickness: 1,
//           ),
//         ),
//         Text(
//           "Or continue with ",
//           style: TextStyle(color: Colors.black87, fontSize: 14.0),
//         ),
//         const Expanded(
//           child: Divider(
//             indent: 10.0,
//             endIndent: 40.0,
//             thickness: 1,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class DribbleUserTextField extends StatefulWidget {
//   final String hintText;
//   DribbleUserTextField({Key? key, required this.hintText}) : super(key: key);
//
//   @override
//   State<DribbleUserTextField> createState() => _DribbleTextFieldState();
// }
//
// class _DribbleTextFieldState extends State<DribbleUserTextField> {
//   bool isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 10, right: 10),
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             offset: const Offset(1.0, 1.0),
//             blurRadius: 5.0,
//             color: Colors.white.withOpacity(0.3),
//           )
//         ],
//       ),
//       child: TextField(
//         textInputAction: TextInputAction.next,
//         cursorColor: Colors.grey[500],
//         decoration: InputDecoration(
//           fillColor: Colors.white.withOpacity(0.6),
//           filled: true,
//           hintText: widget.hintText,
//           hintStyle: TextStyle(
//             color: Colors.grey[500],
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.white),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.white),
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DribblePasswordTextField extends StatefulWidget {
//   final String hintText;
//   const DribblePasswordTextField({Key? key, required this.hintText})
//       : super(key: key);
//
//   @override
//   State<DribblePasswordTextField> createState() =>
//       _DribblePasswordTextFieldState();
// }
//
// class _DribblePasswordTextFieldState extends State<DribblePasswordTextField> {
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 10, right: 10),
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//               offset: const Offset(1.0, 1.0),
//               blurRadius: 5.0,
//               color: Colors.white.withOpacity(0.3))
//         ],
//       ),
//       child: TextField(
//         cursorColor: Colors.grey[500],
//         textInputAction: TextInputAction.done,
//         obscuringCharacter: "*",
//         obscureText: isSelected ? false : true,
//         maxLength: 8,
//         keyboardType: TextInputType.visiblePassword,
//         decoration: InputDecoration(
//           counter: const Offstage(),
//           fillColor: Colors.white.withOpacity(0.6),
//           filled: true,
//           hintText: widget.hintText,
//           hintStyle: TextStyle(
//             color: Colors.grey[500],
//           ),
//           suffixIcon: Padding(
//             padding: const EdgeInsets.only(right: 15.0),
//             child: IconButton(
//               color: Colors.grey[500],
//               onPressed: () {
//                 setState(() {
//                   isSelected = !isSelected;
//                 });
//               },
//               icon: Icon(
//                   !isSelected ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.white),
//               borderRadius: BorderRadius.circular(10)),
//           enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.white),
//               borderRadius: BorderRadius.circular(10)),
//         ),
//       ),
//     );
//   }
// }
//
// class DribbleSignInButton extends StatefulWidget {
//   const DribbleSignInButton({Key? key}) : super(key: key);
//
//   @override
//   State<DribbleSignInButton> createState() => _DribbleSignInButtonState();
// }
//
// class _DribbleSignInButtonState extends State<DribbleSignInButton> {
//   bool _isClicked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10, right: 10.0),
//       child: Material(
//         elevation: 6,
//         clipBehavior: Clip.antiAlias,
//         borderRadius: BorderRadius.circular(10),
//         child: MaterialButton(
//           minWidth: MediaQuery.of(context).size.width,
//           color: const Color.fromRGBO(252, 107, 104, 1.0),
//           onPressed: () {
//             FocusScope.of(context).unfocus();
//
//             setState(() {
//               _isClicked = !_isClicked;
//             });
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: _isClicked
//                 ? const CupertinoActivityIndicator(
//                     color: Colors.white,
//                   )
//                 : Text(
//                     'Sign in',
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodySmall!
//                         .copyWith(color: Colors.white, fontSize: 20.0),
//                   ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DribbleAuthButton extends StatefulWidget {
//   final String authURL;
//   DribbleAuthButton({Key? key, required this.authURL}) : super(key: key);
//
//   @override
//   State<DribbleAuthButton> createState() => _DribbleAuthButtonState();
// }
//
// class _DribbleAuthButtonState extends State<DribbleAuthButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 80,
//       height: 50,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(width: 2.0, color: Colors.white)),
//       child: Image.network(
//         widget.authURL,
//         errorBuilder: (c, o, s) {
//           return CupertinoActivityIndicator();
//         },
//       ),
//     );
//   }
// }
//
// class DribbleWallpaper extends StatelessWidget {
//   const DribbleWallpaper({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//       width: 360,
//       height: 360,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(35),
//         image: const DecorationImage(
//           image: const AssetImage('assets/wal.png'),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
//
// class DribbleRichText extends StatelessWidget {
//   final String primaryText;
//   final String secondaryText;
//   final Color colors;
//   final double fontSize;
//   const DribbleRichText(
//       {Key? key,
//       this.primaryText = "",
//       this.colors = Colors.grey,
//       this.fontSize = 25.0,
//       this.secondaryText = ""})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       textAlign: TextAlign.center,
//       text: TextSpan(
//         text: '${primaryText}\n',
//         style: Theme.of(context)
//             .textTheme
//             .bodySmall!
//             .copyWith(color: colors, fontSize: 15.0),
//         children: [
//           TextSpan(
//               text: secondaryText,
//               style: Theme.of(context)
//                   .textTheme
//                   .bodySmall!
//                   .copyWith(color: colors, fontSize: 17.0)),
//         ],
//       ),
//     );
//   }
// }
//
// class DribbleSwapWidget extends StatelessWidget {
//   const DribbleSwapWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 70,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           //color: Colors.white,
//           border: Border.all(color: Colors.white, width: 2.0)),
//       child: Row(
//         children: [
//           Container(
//             width: 150,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(14),
//             ),
//             child: SizedBox.expand(
//               child: Center(
//                 child: Text(
//                   'Register',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => DribbleDesign()));
//             },
//             child: Container(
//               width: 145,
//               decoration: BoxDecoration(),
//               child: SizedBox.expand(
//                 child: Center(
//                   child: Text(
//                     'Sign in',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 20.0, color: Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
