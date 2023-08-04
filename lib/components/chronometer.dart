import 'package:flutter/material.dart';
import 'package:pomodoro_with_mobx/components/chronometer_button.dart';
import 'package:pomodoro_with_mobx/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Chronometer extends StatelessWidget {
  const Chronometer({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Container(
      color: store.isWorking() ? Colors.red : Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            store.isWorking() ? 'Hora de Trabalhar' : 'Hora de Descansar',
            style: const  TextStyle(
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
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.isStarted)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ChronometerButton(
                      text: 'Iniciar',
                      icon: Icons.play_arrow,
                      click: store.start,
                    ),
                  ),
                if (store.isStarted)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ChronometerButton(
                      text: 'Parar',
                      icon: Icons.stop,
                      click: store.tostop,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ChronometerButton(
                    text: 'Reiniciar ',
                    icon: Icons.refresh,
                    click: store.restart,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
