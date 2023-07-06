import 'package:flutter/material.dart';

class SpacesViewAppBarTitle extends StatelessWidget {
  const SpacesViewAppBarTitle({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.black.withOpacity(0.7)
              : Colors.white.withOpacity(0.9),
          fontSize: 25,
        ),
      ),
    );
  }
}
