import 'package:chat_friend/screens/home/chat_screen.dart';
import 'package:chat_friend/screens/home/contacts_screen.dart';
import 'package:chat_friend/screens/home/groups_screen.dart';
import 'package:chat_friend/screens/home/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// The main layout widget that holds a PageView and a bottom navigation bar.
// Allows switching between Chat, Groups, Contacts, and Settings screens.

class LayoutApp extends StatefulWidget {
  const LayoutApp({super.key});

  @override
  State<LayoutApp> createState() => _LayoutAppState();
}

class _LayoutAppState extends State<LayoutApp> {
  final PageController pageController = PageController();
  int index = 0;

  @override
  void dispose() {
    pageController.dispose(); // Dispose controller to free resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        children: const [
          ChatScreen(),
          GroupsScreen(),
          ContactsScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
            pageController.jumpToPage(value);
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.message), label: "Chat"),
          NavigationDestination(icon: Icon(Iconsax.messages), label: "Groups"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Contacts"),
          NavigationDestination(icon: Icon(Iconsax.setting), label: "Settings"),
        ],
      ),
    );
  }
}
