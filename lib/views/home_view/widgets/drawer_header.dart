import 'package:flutter/material.dart';

class DrawerHeaderComponent extends StatelessWidget {
  const DrawerHeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                radius: 22,
              ),
              const Spacer(),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                        width: 2,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: const Icon(
                    Icons.more_vert_rounded,
                    size: 20,
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Mohamed Osman',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '@m7amed_a_osman',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black.withOpacity(0.6)
                  : Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                '362 Following',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.6)
                      : Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '310 Followers',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.6)
                      : Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
