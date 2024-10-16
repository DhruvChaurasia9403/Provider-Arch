import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class DarkThemeProvider with ChangeNotifier{
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  void setTheme(themeMode){
    _themeMode = themeMode;
    notifyListeners();
  }
}
