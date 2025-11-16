import 'package:flutter/material.dart';

import '../form/signup.dart';
import '../tapbar_view/tapbarviewpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashFounction() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      splashFounction();
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => TapBarViewPage()), //LoginPage()),
    );
  }

  @override
  void initState() {
    splashFounction();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 283,
          width: 283,
          child: Image.asset("assets/splash.png"),
        ),
      ),
    );
  }
}
