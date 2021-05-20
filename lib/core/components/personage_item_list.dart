import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/models/entities/personage.dart';
import 'package:flutter/cupertino.dart';

class PersonageItemListTile extends StatelessWidget {
  final Personage personage;

  const PersonageItemListTile({Key key, this.personage,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Image.asset(personage.avatar, height: 74,),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                  personage.getStatus.toUpperCase(),
                 style: personage.hasAlive ? TextThemes.statusAlive : TextThemes.statusNotAlive,
                ),
              Text(
                  personage.fullName,
                  style: TextThemes.fullName,
                ),
              Text(
                "${personage.race}, ${personage.getSex}",
                style: TextThemes.position,
              ),
            ],
          )
        ],
      ),
    );
  }
}
