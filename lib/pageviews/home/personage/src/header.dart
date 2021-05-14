import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var elementColor = ColorPalette.darkGray;
    return SafeArea(child: Container(
      height: 48,
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 19),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorPalette.darkAccent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    color: elementColor,
                  ),
                ),
                Text(
                  "Найти персонажа",
                  style: TextThemes.hintText,
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: VerticalDivider(
                    color: elementColor,
                  )),
              Icon(
                Icons.filter_alt_outlined,
                color: elementColor,
              )
            ],
          )
        ],
      ),
    ));
  }
}
