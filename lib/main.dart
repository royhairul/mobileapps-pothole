import 'package:camera/camera.dart';
import 'package:pothole_detector/screens/home/home_view.dart';
import 'package:pothole_detector/screens/splash/splash_view.dart';
import 'package:pothole_detector/shared/constants.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
