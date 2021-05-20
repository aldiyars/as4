import 'dart:ui';

import 'package:accelerator_task_fourth/core/components/episode_list.dart';
import 'package:accelerator_task_fourth/core/components/field_tile.dart';
import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:accelerator_task_fourth/core/models/entities/personage.dart';
import 'package:accelerator_task_fourth/screens/home/personage/profile/widgets/content.dart';
import 'package:accelerator_task_fourth/screens/home/personage/profile/widgets/header.dart';
import 'package:flutter/material.dart';

class PersonageProfile extends StatelessWidget {
  const PersonageProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var personageInfo = ModalRoute.of(context).settings.arguments as Map;
    Personage personage = personageInfo['item'];
    if (personageInfo == null) {
      throw UnimplementedError('Please send info about personage');
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PersonageHeader(personage: personage,),
            PersonageContent(personage: personage,),
            Divider(
              height: 2,
              color: ColorPalette.darkAccent,
            ),
            EpisodeList()
          ],
        ),
      ),
    );
  }
}

// class PersonageProfile extends StatelessWidget {
//   const PersonageProfile({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var personageInfo = ModalRoute.of(context).settings.arguments as Map;
//     var height = MediaQuery.of(context).size.height;
//     if (personageInfo == null) {
//       throw UnimplementedError('Please send info about personage');
//     }
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverPersistentHeader(
//             delegate: MySliverAppBar(expandedHeight: 200),
//             pinned: true,
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//                   (_, index) => ListTile(
//                 title: Text("Index: $index"),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget widgets() => SliverToBoxAdapter(
//     child: GridView.builder(
//       padding: EdgeInsets.symmetric(vertical: 16),
//       itemCount: personageList.length,
//       shrinkWrap: true,
//       primary: false,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 12),
//       itemBuilder: (context, index) => InkWell(
//         onTap: () => Navigator.pushNamed(
//             context, Routes.personageProfile,
//             arguments: {
//               'id': index,
//               'item': personageList[index],
//             }),
//         child: PersonageItemGridTile(
//           personage: personageList[index],
//         ),
//       ),
//     ),
//   );
// }

// class MySliverAppBar extends SliverPersistentHeaderDelegate {
//   final double expandedHeight;
//
//   MySliverAppBar({@required this.expandedHeight});
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Stack(
//       fit: StackFit.expand,
//       overflow: Overflow.visible,
//       children: [
//         Image.asset(
//           personageList[0].avatar,
//           fit: BoxFit.cover,
//         ),
//         Center(
//           child: Opacity(
//             opacity: shrinkOffset / expandedHeight,
//             child: Text(
//               "MySliverAppBar",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 23,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           top: expandedHeight / 2 - shrinkOffset,
//           left: MediaQuery.of(context).size.width / 4,
//           child: Opacity(
//             opacity: (1 - shrinkOffset / expandedHeight),
//             child: Card(
//               color: Colors.transparent,
//               child: SizedBox(
//                 height: expandedHeight,
//                 width: MediaQuery.of(context).size.width / 2,
//                 child: PersonageItemGridTile(
//                   personage: personageList[0],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Align(
//           alignment: Alignment.topLeft,
//           child: IconButton(
//             icon: Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               Scaffold.of(context).openDrawer();
//             },
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   double get maxExtent => expandedHeight;
//
//   @override
//   double get minExtent => kToolbarHeight;
//
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
// }
