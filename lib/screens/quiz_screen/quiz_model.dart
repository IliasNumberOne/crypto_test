import 'package:crypto_test/services/preference_service.dart';
import 'package:flutter/widgets.dart';

class QuizModel extends ChangeNotifier {
  final PreferenceService _preferenceService;

  QuizModel(
      {required PreferenceService preferenceService,})
      : _preferenceService = preferenceService;


}