import 'package:flutter/material.dart';
import 'package:mvvm_app/ui/smart_wigets/double_increase_counter/double_increase_counter.dart';
import 'package:mvvm_app/ui/smart_wigets/single_increase_counter/single_increase_counter.dart';

class ReactiveExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
      children: [
        SingleIncreaseCounter(),
        SizedBox(
          width: 50,
        ),
        DoubleIncreaseCounter()
      ],
    )));
  }
}
