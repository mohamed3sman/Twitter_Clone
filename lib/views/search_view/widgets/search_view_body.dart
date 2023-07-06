import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lotties/70339-twitter-logo-animation.json',
              width: MediaQuery.of(context).size.width * 0.7),
          const Text(
            'Coming Soon...',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
