import 'package:flutter/cupertino.dart';

class ProfileModel extends ChangeNotifier {
  int _category = 0;

  int get category => _category;
  void switchCategory(int category) {
    if(_category != category) {
      _category = category;
      notifyListeners();
    }
  }
}