import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_foundations/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomizerPage extends ConsumerWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomizer = ref.watch(randomizerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          randomizer.generatedNumber?.toString() ?? 'Generate a Number',
          style: TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text('Generate'),
          onPressed: () {
            ref.read(randomizerProvider.notifier).generateNumber();
          }),
    );
  }
}
