import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
          itemCount: noti_name.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Text(
                    noti_name[index],
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text('Happy shopping'),
                  trailing: Container(
                      height: 45,
                      width: 35,
                      child: Image(
                        image: AssetImage('assets/flip.png'),
                      )),
                ),
              ),
            );
          }),
    );
  }

  List noti_name = [
    '70 super coins will expire in 21 days!',
    'Hair colours Up to 50% off',
    'Perfumes Up to 65% off',
    'Appliances Up to 20% off',
    'Electronic items Up to 50% off',
    'Big Billion Sales is LIVE!',
    'Check out your Cart...!'
  ];
}