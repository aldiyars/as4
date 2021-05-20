import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/resources/images.dart';
import 'package:accelerator_task_fourth/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(context, Routes.home,);
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: ColorPalette.darkPrimary,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.splash),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: height / 2 + 156,
                child: Image.asset(
                  Images.splash_1,
                  height: height / 3.75,
                ),
              ),
              Positioned(
                child: Image.asset(
                  Images.splash_2,
                  height: height / 17.1,
                ),
                bottom: height / 2 + 114,
              ),
              Positioned(
                  child: Image.asset(
                    Images.splash_3,
                    // height: height / 4.25,
                  ),
                  bottom: height / 2 - 26),
              Positioned(
                child: Image.asset(Images.splash_4, height: height / 4),
                top: height / 2 + 4,
              ),
              Positioned(
                child: Image.asset(Images.splash_5, height: height / 3.75),
                bottom: 0,
              ),
            ],
          ),
        ));
  }
}
