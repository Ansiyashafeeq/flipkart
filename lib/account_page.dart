import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'log_in_page.dart';

class Account_page extends StatefulWidget {
  const Account_page({Key? key}) : super(key: key);

  @override
  State<Account_page> createState() => _Account_pageState();
}

class _Account_pageState extends State<Account_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hey! Flipkart Customer',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[200]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.border_all,
                                  color: Colors.blue[900],
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Orders',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cart()));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[200]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.blue[900],
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Wishlist',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 8, bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[200]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.countertops_outlined,
                                  color: Colors.blue[900],
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Coupons',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[200]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.headset_mic_outlined,
                                  color: Colors.blue[900],
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Help',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Credit Options',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        )),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(
                        Icons.currency_rupee,
                        color: Colors.blue[900],
                      ),
                      title: Text(
                        'Flipkart Pay Later',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      subtitle:
                      Text('Complete application & get ₹1000 gift cards'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Account Settings',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      )),
                  ListTile(
                    leading: Icon(
                      Icons.add_box_outlined,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Flipkart Plus',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogIn(),
                          ));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.blue[900],
                      ),
                      title: Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.wallet,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Saved cards & Wallet',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Saved Address',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Select Language',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Notification Settings',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'My Activity',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      )),
                  ListTile(
                    leading: Icon(
                      Icons.reviews,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Reviews',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.messenger_outline,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Questions & Answers',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.white54),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Text(
                    'Log Out',
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}