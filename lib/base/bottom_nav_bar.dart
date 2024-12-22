import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentBottonNavIndex = 0;

  final appScreens = [
    const Text('Home Page'),
    const Text('Search Page'),
    const Text('Tickets Page'),
    const Text('Profile Page'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: appScreens[currentBottonNavIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0XFF526400),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentBottonNavIndex,
        onTap: (value) {
          setState(() {
            currentBottonNavIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: 'Home',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: 'Search',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              label: 'Tickets',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              label: 'Profile',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
        ],
      ),
    );
  }
}
