import 'package:angio/screens/auth/login.dart';
import 'package:angio/utils/models/themes.dart';
import 'package:flutter/material.dart';

import 'screens/users/app.dart';
import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angio',
      theme: lightTheme,
      darkTheme: darkTheme, // standard dark theme
      themeMode: ThemeMode.system,

      home: const LoginScreen(),
    );
  }
}
