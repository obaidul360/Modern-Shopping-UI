import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../pages/cart.dart';
import '../pages/catagorise.dart';
import '../pages/home.dart';
import '../pages/search.dart';
import '../pages/wishlist.dart';
import '../profile/profile.dart';
import '../test_code/trst.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _screenIndex = 0;

  final _bottomNavBarLogo = <Widget>[
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image(image: AssetImage("assets/home_icon.png")),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image(image: AssetImage("assets/category_icon.png")),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image(image: AssetImage("assets/search_icon.png")),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image(image: AssetImage("assets/cart_icon.png")),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image(image: AssetImage("assets/whitelist_icon.png")),
    ),
  ];

  List screen = [
    HomePages(),
    CatagorisePage(),
    SearchPage(),
    CartPage(), //CartPage(),
    Profile(), //WishlistPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_screenIndex],
      bottomNavigationBar: Stack(
        children: [
          CurvedNavigationBar(
            items: _bottomNavBarLogo,
            backgroundColor: Colors.white,
            color: Color(0xFFFCE9D8),
            buttonBackgroundColor: Color(0xFFFCE9D8),
            animationDuration: Duration(milliseconds: 300),
            onTap: (index) {
              print(index);
              setState(() {
                _screenIndex = index;
              });
            },
          ),
          //home
          Positioned(
            bottom: 4,
            left: 16,
            child: Text(
              "Home",

              style: _screenIndex == 0
                  ? TextStyle(
                      color: Color(0xFF2E2827),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )
                  : TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
            ),
          ),
          //Category
          Positioned(
            bottom: 4,
            left: 75,
            child: Text(
              "Category",
              style: _screenIndex == 1
                  ? TextStyle(
                      color: Color(0xFF2E2827),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )
                  : TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
            ),
          ),
          //Search
          Positioned(
            bottom: 4,
            left: 160,
            child: Text(
              "Search",
              style: _screenIndex == 2
                  ? TextStyle(
                      color: Color(0xFF2E2827),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )
                  : TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
            ),
          ),
          //Cart
          Positioned(
            bottom: 4,
            right: 95,
            child: Text(
              "Cart",
              style: _screenIndex == 3
                  ? TextStyle(
                      color: Color(0xFF2E2827),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )
                  : TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
            ),
          ),
          //Wishlist
          Positioned(
            bottom: 4,
            right: 16,
            child: Text(
              "Wishlist",
              style: _screenIndex == 4
                  ? TextStyle(
                      color: Color(0xFF2E2827),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )
                  : TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
