import 'package:accelerator_task_fourth/core/components/personage_item_grid.dart';
import 'package:accelerator_task_fourth/core/components/personage_item_list.dart';
import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/data/personage_data.dart';
import 'package:accelerator_task_fourth/core/resources/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  final bool isGrid;
  final Function setLayout;

  const Body({Key key, this.isGrid = true, this.setLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [_title(), _personageItemList()],
    );
  }

  Widget _title() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Всего персонажей: 200'.toUpperCase(),
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

  Widget _personageItemList() {
    return Container(
      child: isGrid
          ? Column(
              children: personageList.map((e) {
                return PersonageItemListTile(
                  personage: e,
                );
              }).toList(),
            )
          : GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 16),
              itemCount: personageList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 12),
              itemBuilder: (context, index) => PersonageItemGridTile(
                personage: personageList[index],
              ),
            ),
    );
  }
}
