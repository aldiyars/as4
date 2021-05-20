import 'package:accelerator_task_fourth/core/components/personage_item_grid.dart';
import 'package:accelerator_task_fourth/core/components/personage_item_list.dart';
import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/constants/text_theme.dart';
import 'package:accelerator_task_fourth/core/data/personage_data.dart';
import 'package:accelerator_task_fourth/core/resources/svg_icons.dart';
import 'package:accelerator_task_fourth/core/routes.dart';
import 'package:accelerator_task_fourth/screens/home/personage/profile/personage_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  final bool isGrid;

  const Body({Key key, this.isGrid = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isGrid
        ? ListView.builder(
            itemCount: personageList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Navigator.pushNamed(
                    context, Routes.personageProfile,
                    arguments: {
                      'id': index,
                      'item': personageList[index],
                    }),
                child: PersonageItemListTile(
                  personage: personageList[index],
                ),
              );
            })
        : GridView.builder(
            padding: EdgeInsets.symmetric(vertical: 16),
            itemCount: personageList.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 12),
            itemBuilder: (context, index) => InkWell(
              onTap: () => Navigator.pushNamed(
                  context, Routes.personageProfile,
                  arguments: {
                    'id': index,
                    'item': personageList[index],
                  }),
              child: PersonageItemGridTile(
                personage: personageList[index],
              ),
            ),
          );
  }
}

// return Scaffold(
// body: CustomScrollView(
// slivers: [
// SliverAppBar(
// backgroundColor: ColorPalette.darkPrimary,
// expandedHeight: 200,
// floating: true,
// pinned: true,
// flexibleSpace: FlexibleSpaceBar(
// background: Stack(
// children: <Widget>[
// Image.asset(personageList[0].avatar,  fit: BoxFit.fitWidth, width: MediaQuery.of(context).size.width,),
// Container(
// height: 250,
// width: MediaQuery.of(context).size.width,
// color: Color(0xff0B1E2D).withOpacity(0.65),
// child: BackdropFilter(
// filter: ImageFilter.blur(sigmaX: 3.7, sigmaY: 2.8),
// child: Container(
// color: Colors.black.withOpacity(0.1),
// ),
// ),
// )
// ],
// ),
// collapseMode: CollapseMode.pin,
// title: Text(personageList[1].fullName,),
// centerTitle: true,
// // Image.asset(personageList[0].avatar,  fit: BoxFit.cover,),
// ),
// leading: IconButton(
// onPressed: () => Navigator.pop(context, true),
// icon: Icon(Icons.arrow_back),
// ),
// ),
// widgets()
// ],
// ),
// );
// }
//
// Widget widgets() => SliverToBoxAdapter(
//   child: GridView.builder(
//     padding: EdgeInsets.symmetric(vertical: 16),
//     itemCount: personageList.length,
//     shrinkWrap: true,
//     primary: false,
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 12),
//     itemBuilder: (context, index) => InkWell(
//       onTap: () => Navigator.pushNamed(
//           context, Routes.personageProfile,
//           arguments: {
//             'id': index,
//             'item': personageList[index],
//           }),
//       child: PersonageItemGridTile(
//         personage: personageList[index],
//       ),
//     ),
//   ),
// );
