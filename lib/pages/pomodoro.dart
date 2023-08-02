import 'package:flutter/material.dart';
import 'package:pomodoro_with_mobx/components/chronometer.dart';
import 'package:pomodoro_with_mobx/components/input_time.dart';
import 'package:pomodoro_with_mobx/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Chronometer()),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputTime(
                    title: 'Trabalho',
                    timer: store.workingTime,
                    inc: store.incrementWorkingTime,
                    dec: store.decrementWorkingTime,
                  ),
                  InputTime(
                    title: 'Descanso',
                    timer: store.restTime,
                    inc: store.incrementRestTime,
                    dec: store.decrementRestTime,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
