import 'package:accelerator_task_fourth/pageviews/home/personage/src/body.dart';
import 'package:accelerator_task_fourth/pageviews/home/personage/src/header.dart';
import 'package:flutter/material.dart';

class PersonageWidget extends StatefulWidget {
  const PersonageWidget({Key key}) : super(key: key);

  @override
  _PersonageWidgetState createState() => _PersonageWidgetState();
}

class _PersonageWidgetState extends State<PersonageWidget> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Header(),
                Body(
                  isGrid: isGrid,
                  setLayout: () {
                    setState(() {
                      isGrid = !isGrid;
                    });
                  },
                )
              ],
            ),
          ),
        ),
    );
  }
}
