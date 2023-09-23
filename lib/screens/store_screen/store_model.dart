import 'package:crypto_test/services/preference_service.dart';
import 'package:flutter/widgets.dart';

class StoreModel extends ChangeNotifier {
  final PreferenceService _preferenceService;


  StoreModel(
      {required PreferenceService preferenceService,})
      : _preferenceService = preferenceService;

  late int _threeToOneAmount;
  late int _fiftyFiftyAmount;
  late int _trueHintAmount;
  late int _coinsAmount;

  int get threeToOneAmount => _threeToOneAmount;
  int get fiftyFiftyAmount => _fiftyFiftyAmount;
  int get trueHintAmount => _trueHintAmount;
  int get coinsAmount => _coinsAmount;

  void resumeApp() {
    // _preferenceService.cleanCache();
    _coinsAmount = _preferenceService.getCoinsAmount();
    _threeToOneAmount = _preferenceService.getThreeToOneAmount();
    _fiftyFiftyAmount = _preferenceService.getFiftyFiftyAmount();
    _trueHintAmount =  _preferenceService.getTrueHintAmount();
    notifyListeners();
  }

  void buyHint(int index) {
    if(index == 1 && _coinsAmount >= 70) {
      _threeToOneAmount++;
      _coinsAmount = _coinsAmount - 70;
      _preferenceService.setThreeToOpenAmount(_threeToOneAmount);
      _preferenceService.setCoinsAmount(_coinsAmount);
    }
    if(index == 2 && _coinsAmount >=100) {
      _fiftyFiftyAmount++;
      _coinsAmount = _coinsAmount - 100;
      _preferenceService.setFiftyFiftyAmount(_fiftyFiftyAmount);
      _preferenceService.setCoinsAmount(_coinsAmount);
    }
    if(index == 3 && _coinsAmount >=300) {
      _trueHintAmount++;
      _coinsAmount = _coinsAmount - 300;
      _preferenceService.setTrueHintAmount(_trueHintAmount);
      _preferenceService.setCoinsAmount(_coinsAmount);
    }
    notifyListeners();
  }

}