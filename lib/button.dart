import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.sum});
  final String text;
  final Function() onPressed;
  final bool sum;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Text(
            text,
            style: TextStyle(fontSize: sum ? 20 : 14),
          ),
        ),
        FloatingActionButton(
          onPressed: onPressed,
          child: Icon(sum ? Icons.add : Icons.remove),
        )
      ],
    );
  }
}
