
import 'package:accelerator_task_fourth/core/components/search.dart';
import 'package:accelerator_task_fourth/screens/home/personage/widgets/body.dart';
import 'package:accelerator_task_fourth/screens/home/personage/widgets/total_personage.dart';
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
      appBar: AppBar(
        title: Search(),
        elevation: 0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: TotalPersonage(
            isGrid: isGrid,
            setLayout: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
          ),
        ),
      ),
      body: Body(
          isGrid: isGrid
      )
    );
  }
}
