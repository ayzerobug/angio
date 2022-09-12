import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/wi.dart';

import '../Models/app_screns.dart';

class AppLayout extends StatelessWidget {
  const AppLayout(
      {Key? key, required this.theme, this.footer = const SizedBox()})
      : super(key: key);
  final AppLayoutTheme theme;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    final Widget child = Padding(
      padding: theme.appMargin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (theme.header != null) theme.header!,
          Expanded(
            child: Container(
              padding: theme.bodyPadding,
              decoration: BoxDecoration(
                color: theme.bodyColor,
                borderRadius: theme.borderRadius,
              ),
              child: theme.body,
            ),
          ),
          theme.footer ?? footer
        ],
      ),
    );
    return Scaffold(
      body: theme.safeWrap ? SafeArea(child: child) : child,
    );
  }
}
