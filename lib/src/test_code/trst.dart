import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/app_bar_share_icon.png", width: 20, height: 20),
            Text(
              "Product Details",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            Stack(
              children: [
                Image.asset("assets/lock.png", width: 40, height: 40),
                Positioned(
                  top: 5,
                  right: 2,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Color(0xFFF79E45),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text("2", style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Column(
            spacing: 5,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/order_image.png"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Image.asset("assets/order_image.png", height: 90, width: 70),
              Image.asset("assets/order_image.png", height: 90, width: 70),
              Image.asset("assets/order_image.png", height: 90, width: 70),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Party Borkha Abaya Black",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(Icons.favorite, size: 30, color: Color(0xCCFF8A33)),
            ],),
          ),
          Text("data")



        ],
      ),
    );
  }
}
