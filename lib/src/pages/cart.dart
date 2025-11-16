

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(

        children: [
          Image.asset("assets/app_bar_share_icon.png"),
          SizedBox(width: 125,),

          Text("Cart",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)
        ],
      ),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _productCard(
              image: "assets/best_selling.png",
              title: "Party Borkha Abaya...",
              size: "Size: 40",
              price: "BDT 2880",
              oldPrice: "BDT 3200",
              quantity: 2,
            ),

            const SizedBox(height: 12),

            _productCard(
              image: "assets/best_selling_one.png",
              title: "Party Borkha Abaya...",
              size: "Size: 40",
              price: "BDT 2880",
              oldPrice: "BDT 3200",
              quantity: 1,
            ),

            const SizedBox(height: 20),

            _orderSummary(),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF9A13B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Checkout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // -------------------------------
  // PRODUCT CARD WIDGET
  // -------------------------------
  Widget _productCard({
    required String image,
    required String title,
    required String size,
    required String price,
    required String oldPrice,
    required int quantity,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black12.withOpacity(0.06),
            offset: const Offset(1, 2),
          )
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 75,
              width: 75,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  size,
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      oldPrice,
                      style: const TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Column(
            children: [
              // +
              _roundButton(Icons.add),
              const SizedBox(height: 6),
              Text(
                quantity.toString(),
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              // -
              _roundButton(Icons.remove)
            ],
          )
        ],
      ),
    );
  }

  // Round button
  Widget _roundButton(IconData icon) {
    return Container(
      height: 26,
      width: 26,
      decoration: const BoxDecoration(
        color: Color(0xFFF9A13B),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18, color: Colors.white),
    );
  }

  // -------------------------------
  // ORDER SUMMARY WIDGET
  // -------------------------------
  Widget _orderSummary() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black12.withOpacity(0.06),
            offset: const Offset(1, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Order Summary",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12),

          _summaryRow("Total", "8460"),
          _summaryRow("Shipping Cost", "80"),
          _summaryRow("Delivery Location", "Inside Dhaka"),

          Divider(height: 20),

          _summaryRow("Total", "8540",
              isBold: true, fontSize: 17),
        ],
      ),
    );
  }
}

class _summaryRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isBold;
  final double fontSize;

  const _summaryRow(
      this.title,
      this.value, {
        this.isBold = false,
        this.fontSize = 15,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}










/*
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // FIXED
          children: [
            Image.asset("assets/app_bar_share_icon.png", width: 25, height: 25),
            Text("Cart"),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/best_selling_one.png", width: 90),

                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Party Borkha Abaya",
                            style: TextStyle(fontSize: 19)),
                        Text("Size: 40", style: TextStyle(fontSize: 15)),
                        Row(
                          children: [
                            Text("BDT: 2880",
                                style: TextStyle(fontSize: 17)),
                            SizedBox(width: 6),
                            Text(
                              "3000",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),

                Positioned(
                  top: 2,
                  right: 5,
                  child: Column(
                    children: [
                      Text("+", style: TextStyle(fontSize: 25)),
                      Text("2", style: TextStyle(fontSize: 20)),
                      Text("-", style: TextStyle(fontSize: 25,color: Colors.red)), // FIXED
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
