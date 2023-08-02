import 'package:flutter/material.dart';
import 'package:pomodoro_with_mobx/components/chronometer_button.dart';
import 'package:pomodoro_with_mobx/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Chronometer extends StatelessWidget {
  const Chronometer({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
           Text(
            '${store.minutes.toString().padLeft(2, '0')} : ${store.seconds.toString().padLeft(2, '0')}',
            style: const TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: ChronometerButton(text: 'Iniciar', icon: Icons.play_arrow),
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 10),
              //   child: ChronometerButton(text: 'Parar', icon: Icons.stop),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ChronometerButton(text: 'Reiniciar ', icon: Icons.refresh),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
