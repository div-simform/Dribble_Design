import 'package:divyang_dribble_design/pages/dribble.dart';
import 'package:divyang_dribble_design/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
            bodySmall: TextStyle(fontFamily: 'Poppins', fontSize: 15),
          ),
          useMaterial3: true,
          primaryColor: const Color.fromRGBO(230, 233, 241, 0.1),
          scaffoldBackgroundColor: const Color.fromRGBO(230, 233, 241, 1),
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Color.fromRGBO(230, 233, 241, 1)),
              toolbarHeight: 0.0),
          highlightColor: const Color.fromRGBO(241, 240, 248, 1)),
      home: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: const DribbleHome()),
    );
  }
}
