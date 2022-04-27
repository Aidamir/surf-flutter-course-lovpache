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
        title: const Text("Список\nинтересных мест",   style: appBarTextStyle),
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: backgroundColor,
      ),
      resizeToAvoidBottomInset: false,
      body: const Center(child: Text('Hello!')),
      backgroundColor: backgroundColor,
    );
  }
}
