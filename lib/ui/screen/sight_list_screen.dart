import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

const appBarTextStyle = TextStyle(
  color: Color(0xff252849),
  fontFamily: 'Roboto',
  fontSize: 32,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
);
const backgroundColor = Color(0xFFF5F5F5);

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 40.0,left: 0),
          child: RichText(
              text: const TextSpan(
                style: appBarTextStyle,
                  children: [
                TextSpan(text: "C", style: TextStyle(color: Color(0xff4CAF50))),
                TextSpan(text: "писок\n"),
                TextSpan(text: "и", style: TextStyle(color: Color(0xffFCDD3D))),
                TextSpan(text: "нтересных мест" ),
              ])
              ),
        ),
        elevation: 0,
        toolbarHeight: 112,
        backgroundColor: backgroundColor,
      ),
      resizeToAvoidBottomInset: false,
      body: Center(child: Text("Hello!")),
      backgroundColor: backgroundColor,
    );
  }
}
