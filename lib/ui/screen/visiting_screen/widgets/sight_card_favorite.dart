import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_assets.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/places_icons_icons.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/widget/heart_widget.dart';
import 'package:places/ui/screen/widget/sight_card_base.dart';
import 'package:places/ui/util/loading_progress.dart';

class SightCardFavorite extends SightCardBase {
  final void Function() onDelete;
  const SightCardFavorite({Key? key, required Sight sight, required this.onDelete}) : super(key: key, sight: sight);

  @override
  List<Widget> topRowChildren(BuildContext context) {
    return super.topRowChildren(context)
      ..add(SvgPicture.asset(AppAssets.calendarSvg,color: Colors.white,width: 24 ))
      ..add(const SizedBox(width: 17,))
      ..add(Material(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
            child: const DecoratedBox(child: Icon(PlacesIcons.close, color: Colors.white,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(48)),
          ),
            ) ,
            // SvgPicture.asset(AppAssets.closeSvg, width: 24, color: Colors.white,),
                onTap: (){
                  sight.favorite = false;
                  onDelete();
                },
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        color: Colors.transparent,
//        borderRadius: const BorderRadius.all(Radius.circular(45)),

      ),
      /*Icon(
        Icons.close,
        size: 24,
        color: Colors.white,
      )*/);
  }

  @override
  List<Widget> bottomColumnChildren(BuildContext context) {
    return super.bottomColumnChildren(context)
      ..add(
        const Text(
          "Запланировано",
          style: AppTypography.lightTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      );
  }
}
