import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/sight_details.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push<SightDetails>(
          context,
          MaterialPageRoute<SightDetails>(builder: (context) => SightDetails(sight: sight)),
        );
      },
      child: Container(
        height: 96 * 2,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: AppColors.backgroundPlaceItemBottom,
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: Colors.deepOrange,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            sight.type,
                            style: AppTypography.smallTitle16w500.apply(color: AppColors.backgroundColor),
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          color: AppColors.backgroundColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,), // Demo
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints.expand(),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(sight.name, style: AppTypography.smallTitle16w500),
                      const SizedBox(
                        height: 2,
                      ),
/*                      ConstrainedBox(  // Demo half sized text
                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2),
                          child:*/ Text(sight.details,
                              style: AppTypography.lightTextStyle, overflow: TextOverflow.ellipsis, maxLines: 2,),//),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
