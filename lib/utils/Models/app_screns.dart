import 'package:flutter/material.dart';

class AppLayoutTheme {
  final Widget? header;
  final Widget body;
  final Widget? footer;
  final EdgeInsetsGeometry bodyPadding;
  final EdgeInsetsGeometry appMargin;
  final BorderRadiusGeometry borderRadius;
  final Color bodyColor;
  final bool safeWrap;

  AppLayoutTheme({
    this.header,
    required this.body,
    this.footer,
    this.bodyColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(30)),
    this.appMargin = const EdgeInsets.all(5),
    this.bodyPadding = EdgeInsets.zero,
    this.safeWrap = true,
  });
}
