import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier with WidgetsBindingObserver {
  bool? _userOverride;

  ThemeProvider() {
    WidgetsBinding.instance.addObserver(this);
  }
  bool get isDarkMode {
    if (_userOverride != null) {
      return _userOverride!;
    }
    final systemBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return systemBrightness == Brightness.dark;
  }

  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _userOverride = !isDarkMode;
    notifyListeners();
  }

  @override
  void didChangePlatformBrightness() {
    _userOverride = null;
    notifyListeners();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
