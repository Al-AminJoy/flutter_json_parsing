import 'package:flutter/material.dart';

import 'my_app.dart';
void main() {
  runApp(HomeApp());
}
class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
