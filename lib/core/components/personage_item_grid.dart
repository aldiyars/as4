import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/models/entities/personage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonageItemGridTile extends StatelessWidget {
  final Personage personage;

  const PersonageItemGridTile({Key key, this.personage,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Image.asset(personage.avatar, height: 122,),
          ),
          Text(
              personage.getStatus.toUpperCase(),
              style: TextThemes.statusAlive,

          ),
          Text(
              personage.fullName,
              style: TextThemes.fullNameLayoutGrid,
            ),
          Text(
            "${personage.race}, ${personage.getSex}",
            style: TextThemes.position,
          ),
        ],
      ),
    );
  }
}
