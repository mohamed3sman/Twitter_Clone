import 'package:flutter/material.dart';
import 'package:twitter_clone/views/current_view/current_view.dart';
import 'package:twitter_clone/views/home_view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            theme: ThemeData(
              brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            themeMode: currentMode,
            debugShowCheckedModeBanner: false,
            routes: {
              '/current': (context) => const CurrentView(),
              '/home': (context) => HomeView(),
              '/search': (context) => HomeView(),
              '/spaces': (context) => HomeView(),
              '/notifications': (context) => HomeView(),
              '/messages': (context) => HomeView(),
            },
            initialRoute: '/current',
          );
        });
  }
}
