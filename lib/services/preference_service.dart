import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  final SharedPreferences preferences;
  PreferenceService(this.preferences);

  static const coinsAmountKey = 'coinsAmountKey';
  static const openedLevelsKey = 'openedLevelsKey';
  static const threeToOneAmountKey = 'threeToOneAmountKey';
  static const fiftyFiftyAmountKey = 'fiftyFiftyAmountKey';
  static const trueHintAmountKey = 'trueHintAmountKey';
  static const quizTimesKey = 'quizTimesKey';
  static const quizTrueAnswersKey = 'quizTrueAnswersKey';
  static const dailyAttemptsKey = 'dailyAttemptsKey';

  void cleanCache() {
    preferences.clear();
  }

  int getDailyAttempts() {
    return preferences.getInt(dailyAttemptsKey) ?? 5;
  }
  Future<void> setDailyAttempts(int value) async {
    await preferences.setInt(dailyAttemptsKey, value);
  }

  List<String> getQuizTrueAnswers() {
    return preferences.getStringList(quizTrueAnswersKey) ?? ['0', '0', '0', '0'];
  }
  Future<void> setQuizTrueAnswers(List<String> value) async {
    await preferences.setStringList(quizTrueAnswersKey, value);
  }

  List<String> getQuizTimes() {
    return preferences.getStringList(quizTimesKey) ?? ['0', '0', '0', '0'];
  }
  Future<void> setQuizTimes(List<String> value) async {
    await preferences.setStringList(quizTimesKey, value);
  }

  int getCoinsAmount() {
    return preferences.getInt(coinsAmountKey) ?? 100;
  }
  Future<void> setCoinsAmount(int value) async {
    await preferences.setInt(coinsAmountKey, value);
  }

  int getOpenedLevels() {
    return preferences.getInt(openedLevelsKey) ?? 1;
  }
  Future<void> setOpenedLevel(int value) async {
    await preferences.setInt(openedLevelsKey, value);
  }

  int getThreeToOneAmount() {
    return preferences.getInt(threeToOneAmountKey) ?? 0;
  }
  Future<void> setThreeToOpenAmount(int value) async {
    await preferences.setInt(threeToOneAmountKey, value);
  }

  int getFiftyFiftyAmount() {
    return preferences.getInt(fiftyFiftyAmountKey) ?? 0;
  }
  Future<void> setFiftyFiftyAmount(int value) async {
    await preferences.setInt(fiftyFiftyAmountKey, value);
  }

  int getTrueHintAmount() {
    return preferences.getInt(trueHintAmountKey) ?? 0;
  }
  Future<void> setTrueHintAmount(int value) async {
    await preferences.setInt(trueHintAmountKey, value);
  }
}