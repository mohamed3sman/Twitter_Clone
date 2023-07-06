import 'package:flutter/material.dart';

class SearchViewAppBarActions extends StatelessWidget {
  const SearchViewAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings_outlined,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white.withOpacity(0.9),
            size: 35,
          )),
    );
  }
}
