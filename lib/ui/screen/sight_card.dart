import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/widget/heart_widget.dart';
import 'package:places/ui/util/loading_progress.dart';


class SightCard extends StatelessWidget with LoadingImageCircularMixin {
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
      child: AspectRatio(
        aspectRatio: 3/2,
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
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              sight.type,
                              style: AppTypography.smallTitle16w500.apply(color: AppColors.backgroundColor),
                            ),
                          ),
                          const HeartWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ), // Demo
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
                        Text(
                          sight.details,
                          style: AppTypography.lightTextStyle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
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
}

