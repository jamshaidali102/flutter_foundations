import 'package:flutter/material.dart';
import 'package:flutter_foundations/random_change_notifier.dart';
import 'package:flutter_foundations/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(AppWidget());
}

final randomizerProvider =
    ChangeNotifierProvider((ref) => RandomizerChangeNotifier());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Radnomizer',
        theme: ThemeData(primarySwatch: Colors.teal, canvasColor: Colors.white),
        debugShowMaterialGrid: false,
        home: const RangeSelectorPage(),
      ),
    );
  }
}
