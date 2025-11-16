import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/menubar.png", width: 30, height: 30),
            Image.asset("assets/app_bar_dada_logo.png"),
            Image.asset("assets/person_icon.png", width: 30, height: 30),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.indigoAccent),
                          color: Color(0x9CE1E1E0),
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
              SizedBox(height: 08),
              Image.asset(
                "assets/image_one.png",
                height: 147,
                width: double.infinity,
              ),
              SizedBox(height: 08),
              Text("Catagorise", style: TextStyle(fontSize: 18)),
              SizedBox(height: 08),
              Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/women_two.png",
                            width: 120,
                            height: 140,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: Text(
                              "Women1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Sealling", style: TextStyle(fontSize: 18)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(fontSize: 18, color: Color(0xEDE8D81F)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 275,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          height: 270,
                          width: 145,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF8nCgxa_I7EX1W5-LRijvS96TC6z2KYTd9-Ts0_dG1fHWCqjBS_ANB4CAlm8KlN8Go44&usqp=CAU",
                                  height: 140,
                                  width: 130,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Party Borkha.",
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Price: 2880",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2880",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Add To Cart",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 08),

            ],
          ),
        ),
      ),
    );
  }
}
