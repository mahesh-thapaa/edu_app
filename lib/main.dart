import 'package:edu_app/provider/theme_provider.dart';
import 'package:edu_app/screens/home_screens.dart';
import 'package:edu_app/theme/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const HomeScreens(),

      theme: AppTheme.lightTheme,

      darkTheme: AppTheme.darkTheme,

      // themeAnimationDuration: const Duration(milliseconds: 400),
      // themeAnimationCurve: Curves.easeInOut,
      themeMode: themeProvider.themeMode,
    );
  }
}
