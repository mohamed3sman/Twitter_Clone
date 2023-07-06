import 'package:flutter/material.dart';
import 'package:twitter_clone/views/spaces_view/widgets/spaces_view_body.dart';

class SpacesView extends StatelessWidget {
  const SpacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SpacesViewBody(),
    );
  }
}
