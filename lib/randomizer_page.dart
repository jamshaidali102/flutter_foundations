// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foundations/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomizerPage extends ConsumerWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetReference ref) {
    final randomizer = ref.watch(randomizerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          randomizer.generatedNumber?.toString() ?? 'Generate  number',
          style: TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read(randomizerProvider).generateRandomNumber();
        },
        label: Text('Generate'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
