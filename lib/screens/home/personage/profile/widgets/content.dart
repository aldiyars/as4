import 'package:accelerator_task_fourth/core/components/field_tile.dart';
import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/models/entities/personage.dart';
import 'package:flutter/material.dart';

class PersonageContent extends StatelessWidget {
  final Personage personage;

  const PersonageContent({Key key, this.personage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(personage.description, style: TextThemes.profileDescription,),
          ),
          Row(
            children: [
              Expanded(
                child: FieldTile(
                  title: 'Пол',
                  subtitle: personage.getSex,
                ),
              ),
              Expanded(
                  child: FieldTile(
                title: 'Расса',
                subtitle: personage.race,
              ))
            ],
          ),
          FieldTile(
            title: 'Место рождения',
            subtitle: personage.placeOfBirth,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_forward_ios, color: ColorPalette.white, size: 16,),
            ),
          ),
          FieldTile(
            title: 'Местоположение',
            subtitle: personage.location,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_forward_ios, color: ColorPalette.white, size: 16,),
            ),
          ),
        ],
      ),
    );
  }
}
