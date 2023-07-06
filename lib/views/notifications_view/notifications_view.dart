import 'package:flutter/material.dart';
import 'package:twitter_clone/views/notifications_view/widgets/notifications_view_body.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotificationsViewBody(),
    );
  }
}
