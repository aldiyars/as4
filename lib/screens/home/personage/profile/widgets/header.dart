
import 'dart:ui';

import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/models/entities/personage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonageHeader extends StatelessWidget {
  final Personage personage;

  const PersonageHeader({Key key, this.personage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height / 4 + width / 6,
            child: Stack(
              children: [
                SizedBox(
                  height: height / 4,
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        personage.avatar,
                        fit: BoxFit.fitWidth,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xff0B1E2D).withOpacity(0.65),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3.7, sigmaY: 2.8),
                          child: Container(
                            color: ColorPalette.darkPrimary.withOpacity(0.1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorPalette.darkPrimary,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Image.asset(
                      personage.avatar,
                      width: width / 3,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 54,
                  left: 24,
                  child: Container(
                      decoration: BoxDecoration(
                          color: ColorPalette.darkPrimary,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: ColorPalette.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      )),
                ),
              ],
            ),
          ),
          Text(
            personage.fullName,
            style: TextThemes.fullNameForProfile,
          ),
          Text(
            personage.getStatus.toUpperCase(),
            style: personage.hasAlive ? TextThemes.statusAlive : TextThemes.fieldTileTitle,
          ),
        ],
      ),
    );
  }
}
