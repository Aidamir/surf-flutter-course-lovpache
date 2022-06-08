import 'package:flutter/material.dart';
import 'package:places/mock.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/widget/bottom_navbar.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(112),
        child: Container(
          color: AppColors.backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Text(AppStrings.appTitle, style: AppTypography.appBarTextStyle),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: (mocks.length * 2)-1,
        itemBuilder: (context, index) {
          return (index.isOdd) ? const SizedBox(height: 16) : SightCard(sight: mocks.elementAt(index~/2));
        },),
      bottomNavigationBar: const BottomNavBar(selected: 0),
      );

  }
}
