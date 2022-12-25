import 'package:flutter/material.dart';
import 'package:flutter_foundations/range_selector_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radnomizer',
      theme: ThemeData(primarySwatch: Colors.teal, canvasColor: Colors.white),
      debugShowMaterialGrid: false,
      home: const RangeSelectorPage(),
    );
  }
}