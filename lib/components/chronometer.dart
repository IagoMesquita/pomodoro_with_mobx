import 'package:flutter/material.dart';

class Chronometer extends StatelessWidget {
  const Chronometer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: const [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
