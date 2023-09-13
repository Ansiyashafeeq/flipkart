import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flipkart/providerclass.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List img = object.favoriteImg;
    List name = object.favoriteName;
    List price = object.favoritePrice;

    return Scaffold(
      appBar: AppBar(
        title: Text('WISHLIST'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200]),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(img[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(name[index]),
                          SizedBox(height: 5),
                          Text(
                            price[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          object.favorite(
                              img[index], name[index], price[index]);
                        },
                        icon: object.icn_change(name[index])
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        )
                            : Icon(
                          Icons.favorite_border,
                          color: Colors.blue,
                          size: 30,
                        )),
                  ],
                ),
              ),
            );
          }),
    );
  }
}