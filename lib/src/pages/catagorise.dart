import 'package:flutter/material.dart';

class CatagorisePage extends StatefulWidget {
  const CatagorisePage({super.key});

  @override
  State<CatagorisePage> createState() => _CatagorisePageState();
}

class _CatagorisePageState extends State<CatagorisePage> {
  final List _catagorise = [
    {"women": "Women’s 2", "item": "380 Items"},
    {"women": "Women’s", "item": "140 Items"},
    {"women": "Party Abaya", "item": "380 Items"},
    {"women": "Embroidery Abaya", "item": "380 Items"},
  ];
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
              "Catagorise",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 45,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.indigoAccent),
                          color: Color(0xB2F0F0F0),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, size: 22),
                            labelText: "Search Products", // Field এর label
                            border: OutlineInputBorder(), // Field এর border
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      "assets/filter_logo.png",
                      width: 45,
                      height: 45,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 450,
              child: GridView.builder(
                padding: EdgeInsets.all(12),
                itemCount: _catagorise.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 column
                  crossAxisSpacing: 12, // horizontal gap
                  mainAxisSpacing: 12, // vertical gap
                  childAspectRatio: 1, // box shape (1 = square)
                ),
                itemBuilder: (context, index) {
                  final data = _catagorise[index];

                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data["women"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          data["item"],
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
