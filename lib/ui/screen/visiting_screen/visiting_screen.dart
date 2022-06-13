import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mock.dart';
import 'package:places/ui/res/app_assets.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/visiting_screen/widgets/favorite_empty.dart';
import 'package:places/ui/screen/visiting_screen/widgets/sight_card_favorite.dart';
import 'package:places/ui/screen/visiting_screen/widgets/sight_card_visited.dart';
import 'package:places/ui/screen/widget/bottom_navbar.dart';

class OverlayColor extends MaterialStateColor {
  static const int _defaultColor = 0xffffffff;

  const OverlayColor() : super(_defaultColor);

  @override
  Color resolve(Set<MaterialState> states) {
    if (kDebugMode) {
      print(states);
    }

    return Colors.black;
  }
}

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  List<Sight> get favorites {
    return List.of(mocks.where((element) => element.favorite && element.visited == null));
  }

  List<Sight> get visited {
    return List.of(mocks.where((element) => element.visited != null));
  }

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
            child: Text(AppStrings.favorite),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(52),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6,
                left: 16.0,
                right: 16.0,
                bottom: 30.0,
              ),
              child: Material(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(40),
                color: AppColors.backgroundPlaceItemBottom,
                child: SizedBox(
                  height: 40,
                  child: Theme(
                    data: ThemeData(highlightColor: Colors.transparent),
                    child: TabBar(
                      unselectedLabelStyle: AppTypography.lightTextStyle.copyWith(fontWeight: FontWeight.w700),
                      unselectedLabelColor: AppColors.textColorLight.withOpacity(0.56),
                      tabs: const [
                        Tab(
                          text: AppStrings.wantToVisit,
                        ),
                        Tab(
                          text: AppStrings.visited,
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
          ),
          toolbarHeight: 80,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TabBarView(children: [
            if (favorites.isNotEmpty)
              ListView.builder(
//              padding: const EdgeInsets.all(16),
                itemCount: favorites.length * 2,
                itemBuilder: (context, index) {
                  return (index.isOdd)
                      ? const SizedBox(height: 16)
                      : SightCardFavorite(
                          sight: favorites.elementAt(index ~/ 2),
                          onDelete: onDelete,
                        );
                },
              )
            else
              const FavoriteEmpty(iconPath: AppAssets.cardSvg, message: AppStrings.visitedEmpty),
            if (visited.isNotEmpty)
              ListView.builder(
                itemCount: visited.length * 2,
                itemBuilder: (context, index) {
                  return (index.isOdd)
                      ? const SizedBox(height: 16)
                      : SightCardVisited(
                          sight: visited.elementAt(index ~/ 2),
                          onDelete: onDelete,
                        );
                },
              )
            else
              const FavoriteEmpty(iconPath: AppAssets.goSvg, message: AppStrings.visitedEmpty),
          ]),
        ),
        bottomNavigationBar: const BottomNavBar(selected: 2),
      ),
    );
  }

  void onDelete() {
    setState(() {});
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


                      // indicator: const BoxDecoration(
                      //   color: AppColors.textColorRegular,
                      //   borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      // ),
