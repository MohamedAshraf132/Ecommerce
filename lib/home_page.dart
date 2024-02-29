import 'package:ecommerce/cards.dart';
import 'package:flutter/material.dart';
import 'categories.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, //Color(0xFCDFDDDD),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: ""),
          ]),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true),
                )),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.menu,
                    size: 35,
                  ),
                )
              ],
            ),
            Container(
              height: 40,
            ),
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(
              height: 15,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyWidget(text: "Men", image: "assets/pngegg.png"),
                  MyWidget(text: "Women", image: "assets/pngegg (1).png"),
                  MyWidget(text: "Electircal", image: "assets/pngegg (2).png"),
                  MyWidget(text: "Hobbies", image: "assets/pngegg (3).png"),
                  MyWidget(text: "Foods", image: "assets/pngegg (4).png"),
                  MyWidget(text: "Toyes", image: "assets/pngegg (5).png"),
                  MyWidget(text: "Clothes", image: "assets/pngegg (6).png"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Best Selling",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 240),
              children: [
                cards(
                  image1: "assets/pngegg (8).png",
                  text1: "Logitech G 231",
                  text2: "Wireless Earbuds, Bluetooth 5.3",
                  text3: "Headphones with 4 ENC Mic",
                  text4: "\$899",
                ),
                cards(
                  image1: "assets/pngegg (7).png",
                  text1: "Apple Watch S4",
                  text2: "Fitness Watch with Heart Rate",
                  text3: "Sleep Monitor",
                  text4: "\$859",
                ),
                cards(
                  image1: "assets/pngegg (9).png",
                  text1: "Laptop",
                  text2: "gray Acer laptop, Laptop",
                  text3: "electronics",
                  text4: "\$950",
                ),
                cards(
                  image1: "assets/pngegg (10).png",
                  text1: "AirPods",
                  text2: "AirPods Apple Headphones",
                  text3: "exclusive offers, bluetooth",
                  text4: "\$700",
                ),
                cards(
                  image1: "assets/pngegg (11).png",
                  text1: "Earbuds",
                  text2: "Battery charger Mobile Phone",
                  text3: "Earphone, electronics",
                  text4: "\$513",
                ),
                cards(
                  image1: "assets/pngegg (12).png",
                  text1: "Computer desktop",
                  text2: "black desktop computer",
                  text3: "computer Network, electronics",
                  text4: "\$987",
                ),
                cards(
                  image1: "assets/pngegg (13).png",
                  text1: "Computer keyboard",
                  text2: "Razer BlackWidow X Chroma",
                  text3: "Gaming Keyboard",
                  text4: "\$635",
                ),
                cards(
                  image1: "assets/pngegg (14).png",
                  text1: "iPhone X Apple",
                  text2: "Apple Smart Case for 9.7-inch",
                  text3: " Phone Accessories, mobile case",
                  text4: "\$1000",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
