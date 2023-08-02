import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int timer;
  final void Function()? inc;
  final void Function()? dec;

  const InputTime({
    super.key,
    required this.title,
    required this.timer,
    this.inc,
    this.dec,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.red,
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text('$timer min '),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.red,
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
