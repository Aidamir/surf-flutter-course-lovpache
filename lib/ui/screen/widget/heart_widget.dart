import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/app_assets.dart';

class HeartWidget extends StatelessWidget {
  final Color color;
  const HeartWidget({Key? key, this.color=Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 22,
      height: 20,
      child: Stack(
        children: [
          SvgPicture.asset(AppAssets.heartSvg, color: color,),
          Padding(padding: const EdgeInsets.only(top:4, left: 16),
            child: SvgPicture.asset(AppAssets.heartPartSvg, color: color,),
          ),
        ],
      ),
    );
  }
}


