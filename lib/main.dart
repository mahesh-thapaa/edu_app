import 'package:edu_app/auth/login_page/login_page.dart';
import 'package:edu_app/provider/theme_provider.dart';
import 'package:edu_app/provider/user_provider.dart';
import 'package:edu_app/provider/academic_provider.dart';
import 'package:edu_app/theme/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => AcademicProvider()),
      ],
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

      home: const LoginPage(),

      theme: AppTheme.lightTheme,

      darkTheme: AppTheme.darkTheme,

      // themeAnimationDuration: const Duration(milliseconds: 400),
      // themeAnimationCurve: Curves.easeInOut,
      themeMode: themeProvider.themeMode,
    );
  }
}
