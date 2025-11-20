import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          CircleAvatar(
            radius: 100,
            child: Image.asset("assets/obaidul.jpg",fit: BoxFit.fill,),
          ),
          //DrawerHeader(child: Image.asset("assets/obaidul.jpg")),
          Column(
            children: [
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.home_repair_service_rounded),
                title: Text("Service"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.star_border_purple500_outlined),
                title: Text("Review"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.login_outlined),
                title: Text("About Me"),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
