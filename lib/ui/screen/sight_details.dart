import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({Key? key, required this.sight}) : super(key: key);

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
                        style: AppTypography.largeTitle24w700,
                      ),
                      const SizedBox(height: 2,),
                      RichText(
                        text: TextSpan(
                          text: '${sight.type}   ',
                          style: AppTypography.lightTextStyle.apply(color: AppColors.textColorRegular,fontWeightDelta: 4),
                          children: const [
                            TextSpan(text: 'Закрыто до 09.00', style: AppTypography.lightTextStyle),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(sight.details,
                          style: AppTypography.lightTextStyle.apply(color: AppColors.textColorRegular,),),
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
                            SizedBox(width: 3,),
                            Text('ПОСТРОИТЬ МАРШРУТ'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24,),
                      const Divider(color: AppColors.textColorLight,height: 0.8,),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment:   MainAxisAlignment.spaceAround,
                        children: [
                        Expanded(child: Container(height: 40, child: const Center(child: Text('1 button')), color: Colors.yellow,)),
                        Expanded(child: Container(height: 40, child: const Center(child: Text('2 button')), color: Colors.amber,)),
                      ],),


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
