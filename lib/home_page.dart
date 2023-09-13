import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:provider/provider.dart';

import 'SmartWatch_noise.dart';

import 'package:flipkart/providerclass.dart';

import 'model.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build item');
    final object = Provider.of<Provider_class>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 38,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue.shade600),
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                    Image(image: AssetImage('assets/ekart.png')),
                                  ),
                                  Text(
                                    'Flipkart',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[300]),
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image(
                                      image: AssetImage('assets/gflip.png'),
                                    ),
                                  ),
                                  Text(
                                    'Grocery',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.keyboard_voice),
                          SizedBox(width: 8,),
                          Icon(Icons.camera_alt_outlined)
                        ],
                      ),
                      labelText: 'Search for products',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img1.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img2.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img3.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img4.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 150,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      avatharImage('assets/lightning.png', 'SuperCoins'),
                      avatharImage('assets/discount.png', 'Coupons'),
                      avatharImage('assets/add.png', 'Plus'),
                      avatharImage('assets/credit-card.png', 'Credit'),
                      avatharImage('assets/live.png', 'Live'),
                      avatharImage('assets/photo.png', 'Camera'),
                      avatharImage('assets/rss.png', 'Feeds'),
                      avatharImage('assets/joystick.png', 'Games'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[200]),
                        child: Column(
                          children: [
                            Container(
                              height: 90,

                              child: Stack(
                                children: [
                                  Image(image: AssetImage('assets/iphone.jpg')),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, top: 10),
                                    child: GestureDetector(

                                      onTap: () {
                                        object.favorite('images/iphone.jpg',
                                            'Iphone14pro', 'From ₹1,20,000');
                                      },
                                      child: object.icn_change('Iphone14pro')
                                          ? Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 22,
                                      )
                                          : Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Iphone14pro'),
                                )),
                            SizedBox(height: 5),
                            Text(
                              'From ₹1,20,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[200]),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              child: Stack(
                                children: [
                                  Image(
                                      image:
                                      AssetImage('assets/sonyearbud.jpg')),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 70, top: 10),
                                    child: GestureDetector(
                                      onTap: () {
                                        object.favorite('assets/sonyearbud.jpg',
                                            'Ear buds', 'From ₹1,999');
                                      },
                                      child: object.icn_change('Ear buds')
                                          ? Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 22,
                                      )
                                          : Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Ear buds'),
                                )),
                            SizedBox(height: 5),
                            Text(
                              'From ₹1,999',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NoiseWatch()));
                        },
                        child: Container(
                          height: 142,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[200]),
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/smart watch.jpg')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 70, top: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          object.favorite(
                                              'assets/smart watch.jpg',
                                              '1.85" | BT',
                                              'From ₹2,499');
                                        },
                                        child: object.icn_change('1.85" | BT')
                                            ? Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 30,
                                        )
                                            : Icon(
                                          Icons.favorite_border,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text('1.85" | BT'),
                                  )),
                              SizedBox(height: 5),
                              Text(
                                'From ₹2,499',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.maxFinite,
                color: Colors.grey[200],
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Sponsored',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                    shrinkWrap: true,

                    physics: ScrollPhysics(),

                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 4 / 5.4,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[200]),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              child: Stack(
                                children: [
                                  Image(image: AssetImage(items[index].img)),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 70, top: 10),
                                    child: GestureDetector(
                                        onTap: () {
                                          object.favorite(
                                              items[index].img,
                                              items[index].name,
                                              items[index].price);
                                        },
                                        child:
                                        object.icn_change(items[index].name)
                                            ? Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 30,
                                        )
                                            : Icon(
                                          Icons.favorite_border,
                                          color: Colors.black,
                                          size: 30,
                                        )),
                                  ),
                                ],
                              ),
                              // height: 90,
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //     image: AssetImage(itemImage[index]),
                              //     fit: BoxFit.fill,
                              //   ),
                              // ),
                            ),
                            SizedBox(height: 5),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(items[index].name),
                                )),
                            SizedBox(height: 5),
                            Text(
                              items[index].price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  // List img = ['images/img1.jpg','images/img2.jpg','images/img3.jpg','images/img4.jpg'];
  // List itemImage = [
  //   'images/neckbnd.jpg',
  //   'images/himalaya.jpg',
  //   'images/pen.jpg',
  //   'images/oppo.jpg',
  //   'images/watch.jpg',
  //   'images/earbuds.jpg'
  // ];
  //
  // List itemName = [
  //   'Bault Audio',
  //   'Face Wash',
  //   'Cello Pen',
  //   'Reno 8 pro',
  //   'Dizo Wtch',
  //   'Truke Buds'
  // ];
  //
  // List itemPrice = [
  //   'Just ₹1099',
  //   'Just ₹199',
  //   'Just ₹399',
  //   'From ₹39,999',
  //   'From ₹1999',
  //   'Just ₹899'
  // ];

  List items = [
    Model(img: 'assets/neckbnd.jpg', name: 'Bault Audio', price: 'Just ₹1099'),
    Model(img: 'assets/himalaya.jpg', name: 'Face Wash', price: 'Just ₹199'),
    Model(img: 'assets/pen.jpg', name: 'Cello Pen', price: 'Just ₹399'),
    Model(img: 'assets/oppo.jpg', name: 'Reno 8 pro', price: 'From ₹39,999'),
    Model(img: 'assets/watch.jpg', name: 'Dizo Wtch', price: 'From ₹1999'),
    Model(img: 'assets/earbuds.jpg', name: 'Truke Buds', price: 'Just ₹899')
  ];

  avatharImage(String img, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue.shade50,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Image(
                image: AssetImage(img),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}