import 'package:flutter/cupertino.dart';

class SwitchController extends ChangeNotifier {
  bool isDarkTheme = true;

  static SwitchController instance = SwitchController();

  changeTheme(bool value) {
    isDarkTheme = value;

    notifyListeners();
  }
}