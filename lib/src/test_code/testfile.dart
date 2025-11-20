import 'package:flutter/material.dart';

class CustomBottomNavDemo extends StatefulWidget {
  @override
  _CustomBottomNavDemoState createState() => _CustomBottomNavDemoState();
}

class _CustomBottomNavDemoState extends State<CustomBottomNavDemo> {
  int currentIndex = 0;

  final items = [
    {"icon": Icons.home, "label": "Home"},
    {"icon": Icons.search, "label": "Search"},
    {"icon": Icons.add, "label": "Add"},
    {"icon": Icons.message, "label": "Messages"},
    {"icon": Icons.settings, "label": "Settings"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "${items[currentIndex]['label']} Screen",
          style: TextStyle(fontSize: 22),
        ),
      ),

      bottomNavigationBar: Container(
        height: 65,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            bool isSelected = currentIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Blue top line
                  Container(
                    height: 3,
                    width: 30,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),

                  Icon(
                    items[index]["icon"] as IconData,
                    size: 28,
                    color: isSelected ? Colors.blue : Colors.grey,
                  ),

                  SizedBox(height: 4),

                  Text(
                    items[index]["label"] as String,
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
