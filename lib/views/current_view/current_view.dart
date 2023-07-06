import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';
import 'package:twitter_clone/views/home_view/home_view.dart';
import 'package:twitter_clone/views/messages_view/messages_view.dart';
import 'package:twitter_clone/views/notifications_view/notifications_view.dart';
import 'package:twitter_clone/views/search_view/search_view.dart';
import 'package:twitter_clone/views/spaces_view/spaces_view.dart';

import '../home_view/widgets/drawer_custom_list.dart';
import '../home_view/widgets/drawer_custom_section.dart';
import '../home_view/widgets/drawer_header.dart';
import '../home_view/widgets/home_view_app_bar_title.dart';
import '../search_view/widgets/search_view_app_bar_actions.dart';
import '../search_view/widgets/search_view_app_bar_title.dart';
import '../spaces_view/widgets/spaces_view_app_bar_title.dart';
import 'widgets/application_drawer.dart';

class CurrentView extends StatefulWidget {
  const CurrentView({super.key});

  @override
  State<CurrentView> createState() => _CurrentViewState();
}

int _selectedIndex = 0;

final List<Widget> _pages = [
  const HomeView(),
  const SearchView(),
  const SpacesView(),
  const NotificationsView(),
  const MessagesView(),
];

class _CurrentViewState extends State<CurrentView> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: _selectedIndex == 0
          ? AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: const ApplicationDrawer(),
              title: const HomeViewAppBarTitle(),
            )
          : _selectedIndex == 1
              ? AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: const ApplicationDrawer(),
                  title: const SearchViewAppBarTitle(
                    text: 'Search Twitter',
                  ),
                  actions: const [SearchViewAppBarActions()],
                )
              : _selectedIndex == 2
                  ? AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: const ApplicationDrawer(),
                      title: const SpacesViewAppBarTitle(
                        text: 'Spaces',
                      ),
                    )
                  : _selectedIndex == 3
                      ? AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          leading: const ApplicationDrawer(),
                          title: const SpacesViewAppBarTitle(
                            text: 'Notifications',
                          ),
                          actions: const [SearchViewAppBarActions()],
                        )
                      : AppBar(
                          centerTitle: true,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          leading: const ApplicationDrawer(),
                          title: const SearchViewAppBarTitle(
                            text: 'Search Direct Messages',
                          ),
                          actions: const [
                            SearchViewAppBarActions(),
                          ],
                        ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DrawerHeaderComponent(),
              Column(
                children: [
                  DrawerCustomSection(
                    icon: Icons.person_outline_rounded,
                    text: 'Profile',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/twitter_rect.png',
                          width: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Twitter Blue',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  DrawerCustomSection(
                    icon: Icons.chat_outlined,
                    text: 'Topics',
                  ),
                  DrawerCustomSection(
                    icon: Icons.bookmark_border_rounded,
                    text: 'Bookmarks',
                  ),
                  DrawerCustomSection(
                    icon: Icons.my_library_books_outlined,
                    text: 'Lists',
                  ),
                  DrawerCustomSection(
                    icon: Icons.person_pin_circle,
                    text: 'Twitter Circle',
                  ),
                  Divider(
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DrawerCustomList(
                    text: 'Professional Tools',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  DrawerCustomList(
                    text: 'Settings & Support',
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: GestureDetector(
                    onTap: () {
                      MyApp.themeNotifier.value =
                          MyApp.themeNotifier.value == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light;
                    },
                    child: Icon(
                      Theme.of(context).brightness == Brightness.light
                          ? Icons.wb_sunny_outlined
                          : Icons.dark_mode_outlined,
                      size: 30,
                    )),
              ),
            ],
          ),
        ),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(size: 35),
          unselectedIconTheme: const IconThemeData(size: 35),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0
                      ? Icons.home_rounded
                      : Icons.home_outlined,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 1 ? Icons.search : Icons.search_off,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 2
                      ? Icons.mic_outlined
                      : Icons.mic_none_rounded,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 3
                      ? Icons.notifications_rounded
                      : Icons.notifications_none_rounded,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 4
                      ? Icons.email_rounded
                      : Icons.email_outlined,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white),
              label: '',
            ),
          ]),
    );
  }
}
