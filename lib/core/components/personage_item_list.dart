import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/models/entities/personage.dart';
import 'package:flutter/cupertino.dart';

class PersonageItemListTile extends StatelessWidget {
  final Personage personage;

  const PersonageItemListTile({Key key, this.personage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
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
              Container(
                height: 16,
                child: Text(
                  personage.getStatus.toUpperCase(),
                  style: TextThemes.status,
                ),
              ),
              Container(
                height: 24,
                child: Text(
                  personage.fullName,
                  style: TextThemes.fullName,
                ),
              ),
              RichText(
                text: TextSpan(
                    text: personage.position,
                    style: TextThemes.position,
                    children: [
                      TextSpan(
                          text: ", ${personage.getGender}",
                          style: TextThemes.position)
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
