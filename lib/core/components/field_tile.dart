import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:flutter/material.dart';

class FieldTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leading;

  const FieldTile({Key key, this.title, this.subtitle, this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                style: TextThemes.fieldTileTitle,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 4,
              ),
              Text(subtitle ?? '',
                  style: TextThemes.fieldTileSubtitle,
                  textAlign: TextAlign.start)
            ],
          ),
          leading != null
              ? leading
              : SizedBox(
                  height: 1,
                )
        ],
      ),
    );
  }
}
