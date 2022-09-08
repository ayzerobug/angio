import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key, required this.body, this.footer, this.bodyPadding})
      : super(key: key);
  final Widget body;
  final Widget? footer;
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
              footer != null
                  ? SizedBox(height: 100, child: footer)
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
