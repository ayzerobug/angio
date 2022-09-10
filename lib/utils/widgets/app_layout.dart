import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  const AppLayout(
      {Key? key,
      required this.body,
      this.footer,
      this.bodyPadding,
      this.header})
      : super(key: key);
  final Widget body;
  final Widget? footer;
  final Widget? header;
  final EdgeInsetsGeometry? bodyPadding;

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
                  padding: bodyPadding ??
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: body,
                ),
              ),
              if (footer != null) SizedBox(height: 100, child: footer)
            ],
          ),
        ),
      ),
    );
  }
}
