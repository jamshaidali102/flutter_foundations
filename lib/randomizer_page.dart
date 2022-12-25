// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foundations/random_change_notifier.dart';
import 'package:provider/provider.dart';

class RandomizerPage extends StatelessWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(child: Consumer<RandomizerChangeNotifier>(
        builder: (context, value, child) {
          return Text(
            value.generatedNumber?.toString() ?? 'Generate  number',
            style: TextStyle(fontSize: 42),
          );
        },
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generateRandomNumber();
        },
        label: Text('Generate'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
