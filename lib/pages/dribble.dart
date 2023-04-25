import 'package:divyang_dribble_design/widgets/dribblebuttons.dart';
import 'package:divyang_dribble_design/widgets/dribbledashline.dart';
import 'package:divyang_dribble_design/widgets/dribbletext.dart';
import 'package:divyang_dribble_design/widgets/dribbletextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DribbleDesign extends StatefulWidget {
  const DribbleDesign({Key? key}) : super(key: key);

  @override
  State<DribbleDesign> createState() => _DribbleDesignState();
}

class _DribbleDesignState extends State<DribbleDesign> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 110, right: 16, left: 16, bottom: 20),
          padding: const EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: theme.highlightColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white, width: 3.5),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 60),
              const DribbleTextWidget(text: 'Hello Again !', fontSize: 22),
              const SizedBox(height: 10),
              const DribbleTextWidget(text: 'Welcome to Simform', fontSize: 25),
              const SizedBox(height: 50.0),
              const DribbleUserTextField(hintText: 'Enter username'),
              const SizedBox(height: 30.0),
              const DribblePasswordTextField(hintText: 'Password'),
              const SizedBox(height: 15.0),
              Container(
                margin: const EdgeInsets.only(right: 14),
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20.0, color: Colors.white.withOpacity(0.3))
                  ],
                ),
                child: Text(
                  'Recovery Password',
                  //textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.blueGrey, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 40.0),
              const DribbleSignInButton(),
              const SizedBox(height: 30.0),
              const DribbleDashLine(),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  DribbleAuthButton(
                      authURL:
                          "http://pngimg.com/uploads/google/google_PNG19635.png"),
                  DribbleAuthButton(
                      authURL:
                          "https://pngimg.com/uploads/apple_logo/small/apple_logo_PNG19674.png"),
                  DribbleAuthButton(
                      authURL:
                          "https://pngimg.com/uploads/facebook_logos/small/facebook_logos_PNG19754.png"),
                ],
              ),
              const SizedBox(height: 40.0),
              DribbleRegisterText()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }
}
