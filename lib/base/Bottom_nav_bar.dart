import 'package:book_your_trip/home/home_sceen.dart';
import 'package:book_your_trip/Search/Search.dart';
import 'package:book_your_trip/screen/profile.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../ticketScreen/ticketscreen view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    const Homescreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),

  ];
  // change our index for bottomNavBar
  int _selectedIndex =0;
  void _onItemtapped(int index){
    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

        body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemtapped,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.deepPurple,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      )
    );
  }

}




