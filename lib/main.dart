import 'package:flipkart/providerclass.dart';
import 'package:flipkart/splashscreen.dart';

import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Provider_class(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashFlip(),
      ),
    ),
  );
}