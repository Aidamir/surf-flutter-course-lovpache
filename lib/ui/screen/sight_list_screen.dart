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
        title: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: RichText(
            text: const TextSpan(style: AppTypography.appBarTextStyle, children: [
              TextSpan(text: 'C', style: TextStyle(color: Color(0xff4CAF50))),
              TextSpan(text: 'писок\n'),
              TextSpan(text: 'и', style: TextStyle(color: Color(0xffFCDD3D))),
              TextSpan(text: 'нтересных мест'),
            ]),
          ),
        ),
        elevation: 0,
        toolbarHeight: 112,
        backgroundColor: AppColors.backgroundColor,
      ),
      resizeToAvoidBottomInset: false,
      body: const Center(child: Text('Hello!')),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
