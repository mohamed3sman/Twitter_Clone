import 'package:flutter/material.dart';

class DrawerCustomSection extends StatelessWidget {
  const DrawerCustomSection(
      {super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(
        children: [
          Icon(
            icon,
            size: 32,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
