import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/app_strings.dart';
import 'package:places/ui/res/app_typography.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/util/loading_progress.dart';

class SightCardBase extends StatelessWidget with LoadingImageCircularMixin {
  final Sight sight;

  const SightCardBase({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push<SightDetails>(
          context,
          MaterialPageRoute<SightDetails>(builder: (context) => SightDetails(sight: sight)),
        );
      },
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: AppColors.backgroundPlaceItemBottom,
        child: Column(
          children: [
            SizedBox(
              height: 96,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.cover,
                      loadingBuilder: loadingImageCircularProgress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8, right: 8),
                    child: Row(
                      // ignore:avoid-returning-widgets
                      children: topRowChildren(context),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ), // Demo
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 130, minWidth: double.infinity),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  // ignore:avoid-returning-widgets
                  children: bottomColumnChildren(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // ignore:avoid-unused-parameters
  List<Widget> topRowChildren(BuildContext context) {
    return [
      Expanded(
        child: Text(
          sight.type,
          style: AppTypography.smallTitle16w500.apply(color: AppColors.backgroundColor),
        ),
      ),
    ];
  }
 // ignore:avoid-unused-parameters
  List<Widget> bottomColumnChildren(BuildContext context) {
    return [
      Text(sight.name, style: AppTypography.smallTitle16w500),
      const SizedBox(
        height: 2,
      ),
    ];
  }

  void addClosedUntil(List<Widget> widgets){
   if (sight.closedUntil != null) {
      widgets
        ..add(const SizedBox(
          height: 14,
        ))
        ..add(
          Text('${AppStrings.closedUntil} ${DateFormat(DateFormat.HOUR24_MINUTE).format(sight.closedUntil!)}',
          style: AppTypography.lightTextStyle,),
        );
    }
  }


}
