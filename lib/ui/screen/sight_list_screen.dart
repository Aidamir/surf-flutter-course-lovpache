import 'package:flutter/material.dart';
import 'package:places/ui/res/constants.dart';

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
        title: const Text(AppStrings.appTitle,   style: AppTypography.appBarTextStyle),
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: AppColors.backgroundColor,
      ),
      resizeToAvoidBottomInset: false,
      body: const Center(child: Text('Hello!')),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
