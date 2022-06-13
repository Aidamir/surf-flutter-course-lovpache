import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_assets.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/widget/place_action_button.dart';
import 'package:places/ui/screen/widget/sight_card_base.dart';

class SightCard extends SightCardBase {
  final void Function() onChangeFavorite;

  const SightCard({Key? key, required Sight sight, required this.onChangeFavorite}) : super(key: key, sight: sight);

  @override
  List<Widget> topRowChildren(BuildContext context) {
    return super.topRowChildren(context)
      ..add(
        PlaceActionButton(
          widget: sight.favorite
              ? SvgPicture.asset(
                  AppAssets.heartFullSvg,
                )
              : SvgPicture.asset(
                  AppAssets.heartSvg,
                ),
          action: () {
            sight.favorite = !sight.favorite;
            onChangeFavorite();
          },
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
