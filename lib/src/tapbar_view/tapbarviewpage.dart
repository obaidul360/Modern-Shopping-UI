import 'package:agrments/src/form/signin.dart';
import 'package:agrments/src/form/signup.dart';
import 'package:flutter/material.dart';

class TapBarViewPage extends StatelessWidget {
  const TapBarViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/app_bar_share_icon.png"),
              SizedBox(width: 80),
              Container(
                height: 40,
                width: 120,
                child: Image.asset("assets/app_bar_dada_logo.png"),
              ),
            ],
          ),
          bottom: const TabBar(
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            indicatorWeight: 2,
            tabs: [
              Tab(text: "Sign In"),
              Tab(text: "Sign Up"),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            SignInPage(),
            SignUpPage(),
          ],
        ),
      ),
    );
  }
}
