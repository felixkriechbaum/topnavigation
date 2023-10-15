import 'package:flutter/material.dart';

class TopNavigationBarItem extends StatelessWidget {
  final Widget item;
  final String tooltip;
  final VoidCallback onPressed;
  final List<Widget> actions;
  const TopNavigationBarItem(
      {required this.item,
      required this.onPressed,
      this.tooltip = "",
      this.actions = const [],
      super.key});

  @override
  Widget build(BuildContext context) {
    return actions.isEmpty ? buildStatic() : buildPopup();
  }

  Widget buildStatic() {
    return Tooltip(
      message: tooltip,
      child: IconButton(
        onPressed: () => onPressed(),
        icon: item,
      ),
    );
  }

  Widget buildPopup() {
    return PopupMenuButton(
        tooltip: tooltip,
        onSelected: (value) => onPressed(),
        onOpened: () => onPressed(),
        itemBuilder: (context) =>
            actions.map((e) => PopupMenuItem(child: e)).toList(),
        child: item);
  }
}
