import 'package:flutter/material.dart';

class CustomPostIconTemp extends StatelessWidget {
  const CustomPostIconTemp({super.key, required this.icon, this.num = ''});

  final IconData icon;
  final String num;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.black.withOpacity(0.6)
              : Colors.white,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          num,
          style: const TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
