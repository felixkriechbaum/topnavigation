library topnavigation;

import 'package:flutter/material.dart';
import 'package:topnavigation/topnavigationbaritem.dart';
import 'package:topnavigation/topnavigationbartheme.dart';

class TopNavigationBar extends StatelessWidget {
  final Widget content;
  final List<TopNavigationBarItem> items;
  final TopNavigationBarTheme topNavigationBarTheme;
  const TopNavigationBar(
      {required this.content,
      required this.items,
      this.topNavigationBarTheme = const TopNavigationBarTheme(),
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: topNavigationBarTheme.backgroundColor,
            borderRadius: BorderRadius.all(
                Radius.circular(topNavigationBarTheme.borderRadius)),
          ),
          margin: topNavigationBarTheme.margin,
          padding: topNavigationBarTheme.padding,
          height: topNavigationBarTheme.height,
          child: Row(children: items.map((e) => e).toList()),
        ),
        Expanded(
          child: Container(color: Colors.blue, child: content),
        ),
      ],
    );
  }
}
