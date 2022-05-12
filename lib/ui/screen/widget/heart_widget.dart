import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          SvgPicture.asset('res/images/icons/heart.svg', color: color,),
          Padding(padding: const EdgeInsets.only(top:4, left: 16),
            child: SvgPicture.asset('res/images/icons/heart_part.svg', color: color,),
          ),
        ],
      ),
    );
  }
}


