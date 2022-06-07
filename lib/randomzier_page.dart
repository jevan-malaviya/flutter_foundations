import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_foundations/randomizer_change_notifier.dart';
import 'package:provider/provider.dart';

class RandomizerPage extends StatelessWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(child: Consumer<RandomizerChangeNotifier>(
        builder: (context, notifier, child) {
          return Text(
            notifier.generatedNumber?.toString() ?? 'Generate a Number',
            style: TextStyle(fontSize: 42),
          );
        },
      )),
      floatingActionButton: FloatingActionButton.extended(
          label: Text('Generate'),
          onPressed: () {
            context.read<RandomizerChangeNotifier>().generateNumber();
          }),
    );
  }
}
