import 'package:flutter/material.dart';

class ItemsDetalis extends StatefulWidget {
  final dataimage;
  final datatext1;
  final datatext2;
  final datatext3;
  final datatext4;
  const ItemsDetalis({
    super.key,
    this.dataimage,
    this.datatext1,
    this.datatext2,
    this.datatext3,
    this.datatext4,
  });

  @override
  State<ItemsDetalis> createState() => _ItemsDetalisState();
}

class _ItemsDetalisState extends State<ItemsDetalis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      endDrawer: Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sports_esports_rounded,
              color: Colors.black87,
            ),
            Text(
              " 3amel mn ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
            Text(
              "Benha",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.orangeAccent),
            ),
          ],
        ),
        backgroundColor: Colors.white24,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 30),
      ),
      body: ListView(
        children: [
          Image.asset(
            widget.dataimage,
            height: 250,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(widget.datatext1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                )),
          ),
          SizedBox(height: 5),
          Container(
            child: Text(widget.datatext2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[800])),
          ),
          Container(
            child: Text(
              widget.datatext3,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
              widget.datatext4,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 29,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Color : ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              Text(
                ' Grey',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text(
                ' Black',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Size : ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  ' 39 ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  '  40  ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  '  41  ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  '  42  ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  '  43  ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60, top: 25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(10, 50), backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                'add to cart',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
