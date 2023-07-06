import 'package:flutter/material.dart';

class SearchViewAppBarTitle extends StatelessWidget {
  const SearchViewAppBarTitle({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.grey.withOpacity(0.1)
            : Colors.grey[700],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.black.withOpacity(0.3)
              : Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }
}
