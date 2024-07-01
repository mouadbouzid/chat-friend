import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LayoutApp extends StatefulWidget {
  const LayoutApp({super.key});

  @override
  State<LayoutApp> createState() => _LayoutAppState();
}

class _LayoutAppState extends State<LayoutApp> {
  PageController pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [];
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        children: [
          Container(
            color: Colors.blue,
          ),
          Container(
            color: const Color.fromARGB(255, 58, 124, 177),
          ),
          Container(
            color: const Color.fromARGB(255, 61, 81, 97),
          ),
          Container(
            color: const Color.fromARGB(255, 18, 19, 20),
          ),
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
          NavigationDestination(icon: Icon(Iconsax.setting), label: "settings"),
        ],
      ),
    );
  }
}
