import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  const AppLayout(
      {Key? key,
      required this.body,
      this.footer,
      required this.bodyPadding,
      this.header})
      : super(key: key);
  final Widget body;
  final Widget? footer;
  final Widget? header;
  final EdgeInsetsGeometry bodyPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (header != null) header!,
              Expanded(
                child: Container(
                  padding: bodyPadding,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: body,
                ),
              ),
              if (footer != null) footer!
            ],
          ),
        ),
      ),
    );
  }
}
