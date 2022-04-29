import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 96,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                color: Colors.deepOrange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    sight.type,
                    style: AppTypography.placeTitleTextStyle.apply(color: AppColors.placeTypeColor),
                  ),),
                  Container(
                    width: 24,
                    height: 24,
                    color: AppColors.placeTypeColor,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 96,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
            color: AppColors.backgroundPlaceItemBottom,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(sight.name, style: AppTypography.placeTitleTextStyle),
              const SizedBox(
                height: 2,
              ),
              Text(sight.details, style: AppTypography.lightGreyTinyTextStyle,overflow: TextOverflow.ellipsis,maxLines: 2),
            ],
          ),
        ),
      ],
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 96,
// //      width: 200,
//       decoration:
//           const BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(12)),
//               color: Colors.lightGreen,
//           ),
//
//       margin: EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//
//         children: [
//           Expanded(child: Container(color: Colors.deepOrange)),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
//               child: Text(sight.details),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
