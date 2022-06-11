import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceActionButton extends StatelessWidget {
  final Widget widget;
  final void Function() action;

  const PlaceActionButton({Key? key, required this.widget, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
          child: Container(
            child: Center(child: SizedBox(child: widget, width: 24,height: 24,)),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            height: 40,
            width: 40,
          ),
          onTap: action),
      borderRadius: const BorderRadius.all(Radius.circular(40)),
      color: Colors.transparent,
    );
  }
}
