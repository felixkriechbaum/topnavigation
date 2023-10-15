import 'package:flutter/material.dart';

class TopNavigationBarTheme {
  final Color backgroundColor;
  final double borderRadius;
  final double height;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const TopNavigationBarTheme({
    this.backgroundColor = Colors.black,
    this.borderRadius = 16,
    this.height = 50,
    this.margin = const EdgeInsets.all(8),
    this.padding = const EdgeInsets.all(8),
  });
}
