import 'package:flutter/material.dart';

class DrawerCustomList extends StatelessWidget {
  const DrawerCustomList({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.keyboard_arrow_down_outlined,
          size: 35,
        )
      ],
    );
  }
}
