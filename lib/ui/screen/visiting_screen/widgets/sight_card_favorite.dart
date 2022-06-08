import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_assets.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/widget/heart_widget.dart';
import 'package:places/ui/screen/widget/sight_card_base.dart';
import 'package:places/ui/util/loading_progress.dart';

class SightCardFavorite extends SightCardBase {
  const SightCardFavorite({Key? key, required Sight sight}) : super(key: key, sight: sight);

  @override
  List<Widget> topRowChildren(BuildContext context) {
    return super.topRowChildren(context)
      ..add(SvgPicture.asset(AppAssets.calendarSvg,color: Colors.white,width: 24 ))
      ..add(const SizedBox(width: 17,))
      ..add(SvgPicture.asset(AppAssets.closeSvg, width: 24, color: Colors.white,)
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
