import 'package:agrments/src/notes_app_files/bottom_nav_bar/bottom_nav_bar_page.dart';
import 'package:agrments/src/profile/profile.dart';
import 'package:agrments/src/splash_screen/splash.dart';
import 'package:agrments/src/test_code/testfile.dart';
import 'package:agrments/src/test_code/trst.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen(),//CustomBottomNavDemo() //CheckOutPage()//SplashScreen(),
      ),
    );
  }
}
