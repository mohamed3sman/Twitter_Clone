import 'package:flutter/material.dart';

class MessagesViewBody extends StatelessWidget {
  const MessagesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 7,
          ),
          const Text(
            'Welcome to your inbox!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Drop a line, share Tweets and more with private conversations between you and others on Twitter',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: Colors.blue[400],
              textColor: Colors.white,
              onPressed: () {},
              child: const Text(
                'Write a message',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
