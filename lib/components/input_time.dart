import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int value;

  const InputTime({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.title),
        Text('${this.value}'),
      ],
    );
  }
}
