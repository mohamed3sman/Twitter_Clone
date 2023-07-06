import 'package:flutter/material.dart';

import 'custom_post_icon_temp.dart';

class CustomPostWidget extends StatelessWidget {
  const CustomPostWidget(
      {super.key,
      required this.profileImageLink,
      required this.profileName,
      required this.userName,
      required this.postText,
      required this.postImageLink});

  final String profileImageLink;
  final String profileName;
  final String userName;
  final String postText;
  final String postImageLink;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    profileImageLink,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      profileName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      userName,
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black.withOpacity(0.6)
                            : Colors.white,
                      ),
                    ),
                    Text(
                      '.15h',
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black.withOpacity(0.6)
                            : Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black.withOpacity(0.2)
                          : Colors.white.withOpacity(0.6),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 10),
                  child: Text(
                    postText,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    postImageLink,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomPostIconTemp(
                      icon: Icons.mode_comment_outlined,
                      num: '22',
                    ),
                    CustomPostIconTemp(
                      icon: Icons.autorenew_rounded,
                      num: '30',
                    ),
                    CustomPostIconTemp(
                      icon: Icons.favorite_border_outlined,
                      num: '22',
                    ),
                    CustomPostIconTemp(
                      icon: Icons.bar_chart_rounded,
                      num: '163',
                    ),
                    CustomPostIconTemp(
                      icon: Icons.share_outlined,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
