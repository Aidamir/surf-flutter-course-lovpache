import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_assets.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/widget/heart_widget.dart';
import 'package:places/ui/util/loading_progress.dart';

class SightDetails extends StatelessWidget with LoadingImageCircularMixin {
  final Sight sight;

  const SightDetails({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 360,
                  width: double.infinity,
                  child: Image.network(sight.url, fit: BoxFit.fitHeight, loadingBuilder: loadingImageCircularProgress),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 36, left: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration:
                          const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                      child: const Icon(Icons.arrow_back_ios_outlined, size: 16),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sight.name,
                          style: AppTypography.largeTitle24w700,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '${sight.type}   ',
                            style: AppTypography.lightTextStyle
                                .apply(color: AppColors.textColorRegular, fontWeightDelta: 4),
                            children: const [
                              TextSpan(text: '${AppStrings.closedUntil} 09.00', style: AppTypography.lightTextStyle),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          sight.details,
                          style: AppTypography.lightTextStyle.apply(
                            color: AppColors.textColorRegular,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(48),
                            textStyle: AppTypography.lightTextStyle.apply(fontWeightDelta: 3),
                            primary: AppColors.backgroundColor,
                            backgroundColor: Colors.green,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.route_outlined),
                              SizedBox(
                                width: 3,
                              ),
                              Text(AppStrings.bulidRoute),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Divider(
                          color: AppColors.textColorLight,
                          height: 0.8,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: const Size.fromHeight(40),
                                  textStyle: AppTypography.lightTextStyle,
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppAssets.calendarSvg),
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    const Text(
                                      AppStrings.scheduleIt,
                                      style: AppTypography.lightTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child:TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: const Size.fromHeight(40),
                                  textStyle: AppTypography.lightTextStyle.copyWith(color:AppColors.textColorRegular),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const HeartWidget(color: AppColors.textColorRegular,),
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      AppStrings.toFavorite,
                                      style: AppTypography.lightTextStyle.copyWith(color:AppColors.textColorRegular),
                                    ),
                                  ],
                                ),
                              ),

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
