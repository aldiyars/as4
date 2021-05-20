
import 'package:accelerator_task_fourth/screens/home/personage/profile/personage_profile.dart';
import 'package:flutter/material.dart';

import 'core/constants/color_theme.dart';
import 'core/routes.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/personage/personage_list.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Task 4, Accelerator',
      initialRoute: Routes.initial_splash,
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.initial_splash : (context) => SplashScreen(),
        Routes.personage: (context) => PersonageWidget(),
        Routes.home: (context) => HomeScreen(),
        Routes.personageProfile: (context) => PersonageProfile()
      },
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPalette.darkPrimary,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPalette.darkPrimary
        )
      ),
    ),
  );
}