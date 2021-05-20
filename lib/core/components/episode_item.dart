import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/models/entities/episode.dart';
import 'package:flutter/material.dart';

class EpisodeItem extends StatelessWidget {
  final Episode item;

  const EpisodeItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(item.avatar),
              Padding(
                  padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.series, style: TextThemes.series,),
                    Text(item.title, style: TextThemes.fullName,),
                    Text(item.date, style: TextThemes.date, ),
                  ],
                ),
              )
            ],
          ),
          IconButton(
              icon: Icon(Icons.arrow_forward_ios, color: ColorPalette.white, size: 16,),
              onPressed: () {})
        ],
      ),
    );
  }
}
