import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _key,
        body: const HomeViewBody(),
        floatingActionButton: SizedBox(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue[450],
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
