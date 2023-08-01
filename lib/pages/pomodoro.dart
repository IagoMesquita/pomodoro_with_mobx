import 'package:flutter/material.dart';
import 'package:pomodoro_with_mobx/components/input_time.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              InputTime(title: 'Trabalho', timer: 25),
              InputTime(title: 'Descanso', timer: 10),
            ],
          ),
        ],
      ),
    );
  }
}
