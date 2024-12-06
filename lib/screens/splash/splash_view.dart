import 'dart:async';
import 'package:page_transition/page_transition.dart';
import 'package:pothole_detector/shared/constants.dart';
import 'package:pothole_detector/screens/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: 4), _goNext);
  }

  _goNext() {
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 100),
        child: HomeView(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    kWidth = MediaQuery.of(context).size.width;
    kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo[800]!,
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image(
                image: AssetImage("assets/images/logo.png"),
                // color: Colors.white,
                width: 300,
              ),
              Column(
                children: [
                  Text(
                    "VGtec",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    "Pavement Detector",
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  )
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.copyright,
                    color: Colors.white70,
                    size: 18,
                  ),
                  Text(
                    " 2024 - Team Poliwangi - Mobile Computing",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}