
import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/data/personage_data.dart';
import 'package:accelerator_task_fourth/core/resources/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TotalPersonage extends StatelessWidget {
  final bool isGrid;
  final Function setLayout;

  const TotalPersonage({Key key, this.isGrid, this.setLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Всего персонажей: ${personageList.length}'.toUpperCase(),
            style: TextThemes.title,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 13,
            ),
            child: isGrid
                ? InkWell(
              onTap: setLayout,
              child: SvgPicture.asset(
                SvgIcons.grid,
                color: ColorPalette.darkGray,
                height: 24,
              ),
            )
                : InkWell(
              onTap: setLayout,
              child: SvgPicture.asset(SvgIcons.list,
                  color: ColorPalette.darkGray, height: 24),
            ),
          )
        ],
      ),
    );
  }
}
