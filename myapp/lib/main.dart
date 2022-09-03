import 'dart:developer';

import 'package:flutter/material.dart';
import 'login.dart';
import 'menu.dart';
import 'scanProducts.dart';
import 'check.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScanProducts(),
    );
  }
}
