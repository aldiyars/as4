import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var elementColor = ColorPalette.darkGray;
    return TextFormField(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none),
          fillColor: ColorPalette.darkAccent,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          hintText: 'Найти персонажа',
          hintStyle: TextThemes.hintText,
          prefixIcon: IconButton(
            icon: Icon(
              Icons.search,
              color: elementColor,
            ),
            onPressed: null,
          ),
          suffixIcon: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                VerticalDivider(
                  color: elementColor,
                  indent: 12,
                  endIndent: 12,
                  width: 1,
                  thickness: 1,
                ),
                IconButton(
                  icon: Icon(
                    Icons.filter_alt_outlined,
                    color: elementColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )),
      onChanged: (val) {
        print(val);
      },
    );
  }
}
