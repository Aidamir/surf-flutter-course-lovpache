import 'package:flutter/material.dart';
import 'package:places/mock.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: Text('Список\nинтересных мест', style: AppTypography.appBarTextStyle),
        ),
        elevation: 0,
        toolbarHeight: 112,
        backgroundColor: AppColors.backgroundColor,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SightCard(sight: mocks[0]),
            const SizedBox(height: 16),
            SightCard(sight: mocks[1]),
          ],
        ),
      ),
    );
  }
}
