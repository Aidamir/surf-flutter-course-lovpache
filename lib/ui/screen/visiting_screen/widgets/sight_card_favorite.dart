import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/places_icons_icons.dart';
import 'package:places/ui/screen/widget/place_action_button.dart';
import 'package:places/ui/screen/widget/sight_card_base.dart';
import 'package:places/ui/util/dates.dart';

class SightCardFavorite extends SightCardBase {
  final void Function() onDelete;

  const SightCardFavorite({Key? key, required Sight sight, required this.onDelete}) : super(key: key, sight: sight);

  @override
  List<Widget> topRowChildren(BuildContext context) {
    return super.topRowChildren(context)
      ..add(
        PlaceActionButton(
          widget: const Icon(
            PlacesIcons.calendar,
            color: Colors.white,
          ),
          action: () {},
        ),
      )..add(
        PlaceActionButton(
          widget: const Icon(
            PlacesIcons.close,
            color: Colors.white,
          ),
          action: () {
            sight.favorite = false;
            onDelete();
          },
        ),
      );
  }

  @override
  List<Widget> bottomColumnChildren(BuildContext context) {
    final widgets = super.bottomColumnChildren(context);
    if (sight.scheduled != null) {
      widgets..add(const SizedBox(height: 2,))..add(
        Text(
          '${AppStrings.scheduled} ${visitDateString(sight.scheduled!)}',
          style: AppTypography.lightTextStyle.apply(color: AppColors.greenDark),
          overflow: TextOverflow.ellipsis,
        ),
      );
    }
    addClosedUntil(widgets);

    return widgets;
  }
}
