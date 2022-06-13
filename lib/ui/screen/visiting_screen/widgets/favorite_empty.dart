import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/app_strings.dart';
import 'package:places/ui/res/app_typography.dart';

class FavoriteEmpty extends StatelessWidget {
  final String iconPath;
  final String message;

  const FavoriteEmpty({Key? key, required this.iconPath, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          width: 64,
          color: AppColors.textColorLight,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(AppStrings.empty, style: AppTypography.screenTitleTextStyle.apply(color: AppColors.textColorLight)),
        const SizedBox(
          height: 8,
        ),
        Text(message,
            style: AppTypography.lightTextStyle.apply(color: AppColors.textColorLight),textAlign: TextAlign.center,),
      ],
    );
  }
}
