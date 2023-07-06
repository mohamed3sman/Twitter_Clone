import 'package:flutter/material.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                  size: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://i.pinimg.com/originals/72/20/c4/7220c4ee3f3a756356c1ca7b1ab230df.jpg',
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Subscribe to ',
                          style: TextStyle(
                            fontSize: 18,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.black
                                    : Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: 'Will Smith ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                            TextSpan(
                                text: 'and get access\n',
                                style: TextStyle(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.black
                                      : Colors.white,
                                )),
                            TextSpan(
                                text: 'to all his movies new for free',
                                style: TextStyle(
                                  height: 1.5,
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.black
                                      : Colors.white,
                                )),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Divider(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black.withOpacity(0.3)
                : Colors.white.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}
