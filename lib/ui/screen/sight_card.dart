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

class SightCard extends SightCardBase {
  void Function() onChangeFavorite;
  SightCard({Key? key, required Sight sight, required this.onChangeFavorite }) : super(key: key, sight: sight);

  @override
  List<Widget> topRowChildren(BuildContext context) {
    return super.topRowChildren(context)..add(
      Material(
        child: InkWell(
          child: sight.favorite ? SvgPicture.asset(AppAssets.heartFullSvg) : SvgPicture.asset(AppAssets.heartSvg) ,
          onTap: () {
             sight.favorite = !sight.favorite;
             onChangeFavorite();
          },
        ),
        color: Colors.transparent,
      ),
    );
  }

  @override
  List<Widget> bottomColumnChildren(BuildContext context) {
    return super.bottomColumnChildren(context)
      ..add(
        Text(
          sight.details,
          style: AppTypography.lightTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      );
  }
}
