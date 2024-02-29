import 'package:ecommerce/details.dart';
import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  const cards(
      {super.key,
      required this.image1,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});
  final String image1;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => new ItemsDetalis(
                    dataimage: image1,
                    datatext1: text1,
                    datatext2: text2,
                    datatext3: text3,
                    datatext4: text4,
                  )),
        );
      },
      child: Card(
        child: Column(
          children: [
            Container(
              width: 200,
              color: Colors.grey[200],
              child: Image.asset(
                image1,
                height: 130,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 8,
            ),
            Text(
              text1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Container(
              height: 5,
            ),
            Text(
              text2,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            Text(
              text3,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            Container(
              height: 8,
            ),
            Text(
              text4,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.orangeAccent),
            ),
          ],
        ),
      ),
    );
  }
}
