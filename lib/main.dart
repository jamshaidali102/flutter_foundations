import 'package:flutter/material.dart';
import 'package:flutter_foundations/random_change_notifier.dart';
import 'package:flutter_foundations/range_selector_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomizerChangeNotifier(),
      child: MaterialApp(
        title: 'Radnomizer',
        theme: ThemeData(primarySwatch: Colors.teal, canvasColor: Colors.white),
        debugShowMaterialGrid: false,
        home: const RangeSelectorPage(),
      ),
    );
  }
}
