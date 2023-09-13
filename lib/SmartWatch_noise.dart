import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class NoiseWatch extends StatefulWidget {
  const NoiseWatch({Key? key}) : super(key: key);

  @override
  State<NoiseWatch> createState() => _NoiseWatchState();
}

class _NoiseWatchState extends State<NoiseWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              color: Colors.white,
              child: Center(
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
                  )),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              color: Colors.amber,
              child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
                  )),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Smart Watches',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.keyboard_voice,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/watch1.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/watch2.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/watch3.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/watch4.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/watch5.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 410,
                      disableCenter: true,
                      enableInfiniteScroll: true,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                    ),
                  ),
                ],
              ),
              Text(
                'Noise Icon Buzz BT Calling with 1.69" display, AI Voice Assistance, Built-In Games'
                    'Smartwatch (Black Strap,Regular)',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(height: 20),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '#JustHere',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  )),
              SizedBox(height: 5),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '★★★★★',
                    style: TextStyle(fontSize: 20, color: Colors.green[900]),
                  )),
              SizedBox(height: 20),
              Container(
                height: 70,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[100]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Several Deal',
                            style: TextStyle(color: Colors.green[900]),
                          )),
                      Row(
                        children: [
                          Text(
                            '68% off',
                            style: TextStyle(
                                color: Colors.green[900], fontSize: 25),
                          ),
                          SizedBox(width: 30),
                          Text(
                            '₹1,599',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Buy Now and Pay Later with EMI',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}