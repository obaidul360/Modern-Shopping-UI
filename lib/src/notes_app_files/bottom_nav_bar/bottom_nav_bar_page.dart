import 'package:agrments/src/notes_app_files/screen/folder_screen.dart';
import 'package:agrments/src/notes_app_files/screen/notes_screen.dart';
import 'package:agrments/src/notes_app_files/screen/setting_screen.dart';
import 'package:agrments/src/notes_app_files/screen/trast_screen.dart';
import 'package:flutter/material.dart';

class BottomNaviBarPage extends StatefulWidget {
  const BottomNaviBarPage({super.key});

  @override
  State<BottomNaviBarPage> createState() => _BottomNaviBarPageState();
}

class _BottomNaviBarPageState extends State<BottomNaviBarPage> {
  int currentScreen = 0;
  List screenList = [
    MyNotesScreen(),
    MyFolderScreen(),
    TrastScreen(),
    MySettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        onTap: (value) {
          setState(() {
            currentScreen = value;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: "Note",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_copy),
            label: "Folder",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete_forever_sharp),
            label: "Trash",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
