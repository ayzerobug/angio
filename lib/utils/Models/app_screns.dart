import 'package:flutter/material.dart';

class AppScreen {
  final Widget? header;
  final Widget body;
  final Widget? footer;
  final EdgeInsetsGeometry bodyPadding;
  final int tabLength;

  AppScreen({
    this.header,
    required this.body,
    this.footer,
    this.tabLength = 1,
    this.bodyPadding = EdgeInsets.zero,
  });
}
