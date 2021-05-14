
import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/routes.dart';
import 'package:accelerator_task_fourth/pageviews/home/home_screen.dart';
import 'package:accelerator_task_fourth/pageviews/home/personage/personage_widget.dart';
import 'package:accelerator_task_fourth/pageviews/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Task 4, Accelerator',
      initialRoute: Routes.initial_splash,
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.initial_splash : (context) => WelcomeScreen(),
        Routes.personage: (context) => PersonageWidget(),
        Routes.home: (context) => HomeScreen()
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