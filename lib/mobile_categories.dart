import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Mobile Phones',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.keyboard_voice,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cat img 1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  avatharCategories(
                      'realme', Colors.black, Colors.amber, 'realme'),
                  avatharCategories(
                      'poco', Colors.black, Colors.yellowAccent, 'poco'),
                  avatharCategories(
                      'MI', Colors.white, Colors.deepOrange, 'Xiaomi'),
                  avatharCategories(
                      'vivo', Colors.white, Colors.deepPurpleAccent, 'vivo'),
                  avatharCategories('oppo', Colors.white, Colors.green, 'oppo'),
                  avatharCategories(
                      'iphone', Colors.white, Colors.black, 'Apple'),
                  avatharCategories(
                      'SAMSUNG', Colors.white, Colors.deepPurple, 'Samsung'),
                  avatharCategories('G Pixel', Colors.deepOrangeAccent,
                      Colors.white, 'Google'),
                  avatharCategories(
                      'Infinix', Colors.white, Colors.black, 'Infinix'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cate img 2.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  avatharCategories(
      String name, Color textColor, Color avatharColor, String brandName) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: avatharColor,
            child: Text(
              brandName,
              style: TextStyle(
                  fontSize: 15, color: textColor, fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(height: 10),
          Text(
            brandName,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}