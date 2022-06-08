import 'package:flutter/material.dart';
import 'package:places/mock.dart';
import 'package:places/ui/res/app_typography.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/visiting_screen/widgets/sight_card_favorite.dart';
import 'package:places/ui/screen/widget/bottom_navbar.dart';

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
          backgroundColor: Colors.transparent,
          titleTextStyle: AppTypography.screenTitleTextStyle,
          elevation: 0,
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text('Избранное'),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(52),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6,
                left: 16.0,
                right: 16.0,
                bottom: 30.0,
              ),
              child: Material(
//                type: MaterialType.transparency,
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 40,
                  color: AppColors.backgroundPlaceItemBottom,
                  child: TabBar(
                    unselectedLabelStyle: AppTypography.lightTextStyle.copyWith(fontWeight: FontWeight.w700),
                    unselectedLabelColor: AppColors.textColorLight,
//            controller: _tabController,
                    tabs: const [
                      Tab(
                        text: 'Хочу посетить',
                      ),
                      Tab(
                        text: 'Посетил',
                      ),
                    ],
                    indicator: const BoxDecoration(
                      color: AppColors.textColorRegular,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          toolbarHeight: 80,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
          child: TabBarView(children: [
            ListView.builder(
//              padding: const EdgeInsets.all(16),
              itemCount: (mocks.length * 2) ,
              itemBuilder: (context, index) {
                return (index.isOdd) ? const SizedBox(height: 16) : SightCardFavorite(sight: mocks.elementAt(index ~/ 2));
              },
            ),
            Text('2222'),
          ]),
        ),
        bottomNavigationBar: const BottomNavBar(selected: 2),
      ),
    );
  }
}

          /*PreferredSize(
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
          ),*/
