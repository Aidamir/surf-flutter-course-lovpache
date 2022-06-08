import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/app_assets.dart';
import 'package:places/ui/res/places_icons_icons.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen/visiting_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int selected;

  const BottomNavBar({Key? key, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(PlacesIcons.list), label: ''),
        BottomNavigationBarItem(icon: Icon(PlacesIcons.map), label: ''),
        BottomNavigationBarItem(icon: Icon(PlacesIcons.heart_full), label: ''),
        BottomNavigationBarItem(icon: Icon(PlacesIcons.settings), label: ''),
      ],
      unselectedItemColor: Colors.indigo,
      currentIndex: selected,
      selectedItemColor: Colors.amber[800],
      showSelectedLabels: false,
      showUnselectedLabels: false,

      onTap: (val) {
        switch (val) {
          case 0:
            Navigator.pop(context);
            Navigator.push<SightListScreen>(
              context,
              MaterialPageRoute<SightListScreen>(builder: (context) => const SightListScreen()),
            );
            return;
          case 2:
            Navigator.pop(context);
            Navigator.push<VisitingScreen>(
              context,
              MaterialPageRoute<VisitingScreen>(builder: (context) => const VisitingScreen()),
            );
            return;
        }
      },
    );
  }
}
