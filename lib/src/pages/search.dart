import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map> hotel = [
    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },

    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },
    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },

    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },
    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },

    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },
    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },
    {
      "title": "Party Borkha Abaya Koliza",
      "image":
          "https://smartdeal.com.bd/public/uploads/all/surKmYl41VwvbuckOjlTpNYcB1slIfzRS7RPhM64.jpg",
      "price": "2880",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Discount"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
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
                        hintText: "Search Products", // Field এর label
                        border: OutlineInputBorder(), // Field এর border
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Image.asset("assets/filter_logo.png", width: 48, height: 48),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: hotel.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                childAspectRatio: .7,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xFFC6C6C6),
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "${hotel[index]["image"]}",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Title: ${hotel[index]["title"]}",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 4),

                                  Row(
                                    children: [
                                      Text("\t\$${hotel[index]["price"]}"),
                                      SizedBox(width: 04),
                                      Text(
                                        "3000",
                                        style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 35,
                                    width: 100,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0xFFDDDBDA,
                                          ).withOpacity(0.3), // ছায়ার রং
                                          spreadRadius: 2, // ছায়া ছড়ানো
                                          blurRadius: 8, // ছায়ার ব্লার
                                          offset: Offset(
                                            0,
                                            4,
                                          ), // ছায়া কোন দিকে যাবে (X, Y)
                                        ),
                                      ],
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add to Cart",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
