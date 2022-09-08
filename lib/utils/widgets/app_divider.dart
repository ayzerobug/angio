import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color.fromARGB(255, 213, 213, 213),
    );
  }
}
