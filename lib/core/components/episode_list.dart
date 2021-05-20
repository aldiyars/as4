import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/data/episode_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'episode_item.dart';

class EpisodeList extends StatelessWidget {
  const EpisodeList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Эпизоды',
                  style: TextThemes.listTitle,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Все эпизоды',
                      style: TextThemes.allButton,
                    ))
              ],
            ),
          ),
          Column(
            children: episodeList.map((e) {
              return EpisodeItem(
                item: e,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
