import 'package:flutter/material.dart';

class ApplicationDrawer extends StatelessWidget {
  const ApplicationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
          radius: 18,
        ),
      ),
    );
  }
}
