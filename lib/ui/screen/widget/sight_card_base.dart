import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_colors.dart';
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
      child: AspectRatio(
        aspectRatio: 3 / 2,
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
                    SizedBox(
                      width: double.infinity,
                      child: Image.network(
                        sight.url,
                        fit: BoxFit.cover,
                        loadingBuilder: loadingImageCircularProgress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: topRowChildren(context),
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ), // Demo
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: bottomColumnChildren(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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

  List<Widget> bottomColumnChildren(BuildContext context) {
    return [
      Text(sight.name, style: AppTypography.smallTitle16w500),
      const SizedBox(
        height: 2,
      ),
    ];
  }
}
