import 'package:flutter/material.dart';
import 'package:twitter_clone/views/messages_view/widget/messages_view_body.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MessagesViewBody(),
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue[450],
          child: const Icon(
            Icons.add_card_rounded,
            size: 30,
          ),
        ),
      ),
    );
  }
}
