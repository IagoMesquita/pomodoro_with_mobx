import 'package:flutter/material.dart';

class ChronometerButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const ChronometerButton({
    super.key,
    required this.text,
    required this.icon,
    this.click
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        textStyle: const TextStyle(fontSize: 25),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
