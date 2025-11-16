import 'package:flutter/material.dart';

import '../bottom_nav_bar/bottom_nav_Bar.dart';
import '../pages/home.dart';
import 'edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavBarPage()),
                );
              },
              child: Image.asset("assets/app_bar_share_icon.png", height: 18),
            ),

            SizedBox(width: 115),
            Text("Profile", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/person.png")),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.white54,
              child: ListTile(
                leading: Image.asset("assets/person2.png"),
                title: Text("My Profile"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: Image.asset("imageslogo/my_order.png"),
                title: Text("My Order"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: Image.asset("imageslogo/offer_order.png"),
                title: Text("Offer Order"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.white54,
              child: ListTile(
                leading: Image.asset("imageslogo/my_review_logo.png"),
                title: Text("My Review"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.white54,
              child: ListTile(
                leading: Image.asset("imageslogo/log_out_logo.png"),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
