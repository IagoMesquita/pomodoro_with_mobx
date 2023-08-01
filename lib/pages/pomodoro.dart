

import 'package:flutter/material.dart';
import 'package:pomodoro_with_mobx/components/input_time.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
      InputTime(title: 'Entrada', value: 25),
      InputTime(title: 'Parada', value: 10),
      ],),
    );
  }
}