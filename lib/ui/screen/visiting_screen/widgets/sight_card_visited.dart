import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/places_icons_icons.dart';
import 'package:places/ui/screen/widget/place_action_button.dart';
import 'package:places/ui/screen/widget/sight_card_base.dart';

class SightCardVisited extends SightCardBase {
  final void Function() onDelete;

  const SightCardVisited({Key? key, required Sight sight, required this.onDelete}) : super(key: key, sight: sight);

  @override
  List<Widget> topRowChildren(BuildContext context) {
    return super.topRowChildren(context)
      ..add(
        PlaceActionButton(
          widget: const Icon(
            PlacesIcons.close,
            color: Colors.white,
          ),
          action: () {
            sight.visited = null;
            onDelete();
          },
        ),
      );
  }

  @override
  List<Widget> bottomColumnChildren(BuildContext context) {
    final widgets = super.bottomColumnChildren(context)
      ..add(
        Text('${AppStrings.placeVisited} ${DateFormat(DateFormat.HOUR24_MINUTE).format(sight.visited!)}',
            style: AppTypography.lightTextStyle,),
      );
    addClosedUntil(widgets);

    return widgets;
  }
}
