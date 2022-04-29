import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  SightDetails({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: 360, color: Colors.blue),
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 16),
                child: Container(
                  height: 32,
                  width: 32,
                  decoration:
                      const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                  child:const Icon(Icons.arrow_back_ios_outlined, size: 16),
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
                        style: AppTypography.placeDetailTitle,
                      ),
                      RichText(
                        text: TextSpan(
                          text: '${sight.type}   ',
                          style: AppTypography.lightGreyTinyTextStyle.apply(color: AppColors.textColorRegular),
                          children: const [
                            TextSpan(text: 'Закрыто до 09.00', style: AppTypography.lightGreyTinyTextStyle),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(sight.details,
                          style: AppTypography.lightGreyTinyTextStyle.apply(color: AppColors.textColorRegular,),),
                      const SizedBox(
                        height: 24,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.fromHeight(48),
                          textStyle: AppTypography.lightGreyTinyTextStyle.apply(color: Colors.white, fontWeightDelta: 3),
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.route_outlined),
                            Text('ПОСТРОИТЬ МАРШРУТ'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
