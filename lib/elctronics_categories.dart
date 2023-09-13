import 'package:flutter/material.dart';

class Electronic extends StatefulWidget {
  const Electronic({Key? key}) : super(key: key);

  @override
  State<Electronic> createState() => _ElectronicState();
}

class _ElectronicState extends State<Electronic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Electronics',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.keyboard_voice,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
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
                  image: AssetImage('itemImages/cat img 1.jpg'),
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
                  avatharCategories('hp', Colors.white, Colors.blue, 'hp'),
                  avatharCategories('boAt', Colors.red, Colors.grey, 'boAt'),
                  avatharCategories('DELL', Colors.white, Colors.blue, 'DELL'),
                  avatharCategories('PHILIPS', Colors.white,
                      Colors.deepPurpleAccent, 'Philips'),
                  avatharCategories('JBL', Colors.white, Colors.black, 'JBL'),
                  avatharCategories(
                      'APPLE', Colors.white, Colors.black, 'Apple'),
                  avatharCategories(
                      'SAMSUNG', Colors.white, Colors.deepPurple, 'Samsung'),
                  avatharCategories(
                      'MI', Colors.white, Colors.deepOrangeAccent, 'Google'),
                  avatharCategories('SONY', Colors.white, Colors.black, 'Sony'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('itemImages/cat img 3.jpg'),
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