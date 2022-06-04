import 'package:flutter/material.dart';
import 'package:places/ui/res/app_typography.dart';
import 'package:places/ui/res/constants.dart';

class OverlayColor extends MaterialStateColor {
  static const int _defaultColor = 0xffffffff;
  const OverlayColor() : super(_defaultColor);
  @override
  Color resolve(Set<MaterialState> states) {
     return Colors.black;
  }
}

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: AppColors.screenTitleColor,
          backgroundColor: Colors.white,
          titleTextStyle: AppTypography.screenTitleTextStyle,
          elevation: 0,
          centerTitle: true,
          title: const Text('Избранное'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(52),
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
              decoration: const BoxDecoration(
                color: AppColors.backgroundPlaceItemBottom,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              clipBehavior: Clip.hardEdge,
              child: TabBar(
                overlayColor: const OverlayColor(),
                  labelStyle: AppTypography.lightTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                  unselectedLabelStyle: AppTypography.lightTextStyle.copyWith(fontWeight: FontWeight.w700),
                  unselectedLabelColor: AppColors.textColorLight,
                  labelColor: Colors.white,
                  tabs: const [
                    Tab(text: 'Хочу посетить', height: 40),
                    Tab(text: 'Посетил', height: 40),
                  ],
                  indicator: const BoxDecoration(
                    color: AppColors.textColorRegular,
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
              ),
            ),
          ),
          toolbarHeight: 56,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: TabBarView(children: [
            Text('1111'),
            Text('2222'),
          ]),
        ),
      ),
    );
  }
}
