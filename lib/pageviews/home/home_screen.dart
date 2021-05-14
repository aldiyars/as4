import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/data/menu.dart';
import 'package:accelerator_task_fourth/core/models/entities/menu.dart';
import 'package:accelerator_task_fourth/core/resources/svg_icons.dart';
import 'package:accelerator_task_fourth/pageviews/home/episonde/episode_widget.dart';
import 'package:accelerator_task_fourth/pageviews/home/personage/personage_widget.dart';
import 'package:accelerator_task_fourth/pageviews/home/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'locations/locations_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> widgetList = [
    PersonageWidget(),
    LocationsWidget(),
    EpisodeWidget(),
    SettingsWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList.elementAt(_selectedIndex),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: ColorPalette.darkAccent,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: ColorPalette.green,
      unselectedLabelStyle: TextStyle(fontSize: 10, color: ColorPalette.green),
      selectedLabelStyle: TextStyle(
        fontSize: 11,
      ),
      items: menuList
          .map((e) => _bottomNavBarItem(
                svgPath: e.icon,
                label: e.title,
                index: menuList.indexOf(e),
              ))
          .toList(),
      currentIndex: _selectedIndex,
      unselectedItemColor: ColorPalette.darkGray,
      onTap: _onItemTapped,
    );
  }

  BottomNavigationBarItem _bottomNavBarItem(
      {String svgPath, String label, int index}) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          svgPath,
          color: _selectedIndex == index
              ? ColorPalette.green
              : ColorPalette.darkGray,
        ),
        label: label);
  }
}
