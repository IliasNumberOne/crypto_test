import 'dart:async';

import 'package:crypto_test/models/quiz_item_model.dart';
import 'package:crypto_test/screens/store_screen/store_model.dart';
import 'package:crypto_test/services/preference_service.dart';
import 'package:crypto_test/utils/app_data.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';


class GameModel extends ChangeNotifier {
  final PreferenceService _preferenceService;
  final StoreModel _storeModel;

  GameModel({
    required PreferenceService preferenceService,
    required StoreModel storeModel,
  }) : _preferenceService = preferenceService,
      _storeModel = storeModel;


  late Level _level;
  late Quiz _quiz;
  late int _duration;
  int _questionOrder = 0;
  bool _isAnswerPressed = false;
  late int _pressedAnswerInd;
  List<bool> _answersResult = [];
  int _rightAnswers = 0;
  late int _openedLevels;
  int _passingScore = 0;
  List<int> _closeWrongAnswers = [];
  bool _isThreeToOneAvailable = true;
  bool _isFiftyFiftyAvailable = true;
  bool _isTrueHintAvailable = true;
  late int _threeToOneAmount;
  late int _fiftyFiftyAmount;
  late int _trueHintAmount;
  bool _isCheckingAnswer = false;
  late List<String> _quizTimes;
  late List<String> _quizTrueAnswers;
  late Timer _countDownTimer;
  late int _dailyAttempts;
  late BuildContext _context;

  Level get level => _level;
  Quiz get quiz => _quiz;
  int get duration => _duration;
  int get questionOrder => _questionOrder;
  bool get isAnswerPressed => _isAnswerPressed;
  List<bool> get answersResult => _answersResult;
  int get rightAnswers => _rightAnswers;
  int get openedLevels => _openedLevels;
  int get passingScore => _passingScore;
  bool get isThreeToOneAvailable => _isThreeToOneAvailable;
  bool get isFiftyFiftyAvailable => _isFiftyFiftyAvailable;
  bool get isTrueHintAvailable => _isTrueHintAvailable;
  int get threeToOneAmount => _threeToOneAmount;
  int get fiftyFiftyAmount => _fiftyFiftyAmount;
  int get trueHintAmount => _trueHintAmount;
  bool get isCheckingAnswer => _isCheckingAnswer;
  List<String> get quizTimes => _quizTimes;
  List<String> get quizTrueAnswers => _quizTrueAnswers;
  List<int> get closeWrongAnswers => _closeWrongAnswers;
  int get dailyAttempts => _dailyAttempts;

  void resumeApp() {
    _dailyAttempts = _preferenceService.getDailyAttempts();
    _openedLevels = _preferenceService.getOpenedLevels();
    _quizTimes = _preferenceService.getQuizTimes();
    _quizTrueAnswers = _preferenceService.getQuizTrueAnswers();

    Timer.periodic(const Duration(hours: 24), (timer){
      _dailyAttempts = 5;
      _preferenceService.setDailyAttempts(_dailyAttempts);
      notifyListeners();
    });
  }

  void openQuiz(int id) {
    resetValues();
    _level = levels[id];
    _quiz = _level.quizzes[_questionOrder];
    _duration = _level.duration;
    _passingScore = (0.75 * _level.gain).round();
    _threeToOneAmount = _storeModel.threeToOneAmount;
    _fiftyFiftyAmount = _storeModel.fiftyFiftyAmount;
    _trueHintAmount = _storeModel.trueHintAmount;
    startTimer();
  }


  void startTimer() {
    _countDownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      _duration--;
      if(_duration == 0) {
        endQuiz();
      }
      notifyListeners();
    });
  }
  void stopTimer() {
    _countDownTimer.cancel();
  }

  void resetValues() {
    _isCheckingAnswer = false;
    _isAnswerPressed = false;
    _pressedAnswerInd = -1;
    _questionOrder = 0;
    _rightAnswers = 0;
    _answersResult = [];
    _passingScore = 0;
    _closeWrongAnswers = [];
    _isThreeToOneAvailable = true;
    _isFiftyFiftyAvailable = true;
    _isTrueHintAvailable = true;
  }

  void tapOnAnswer(bool isCorrect, int index, BuildContext context) {
    _isCheckingAnswer = true;
    bool found = _closeWrongAnswers.contains(index);
    if (!found) {
      checkAnswer(isCorrect, index, context);
      notifyListeners();
    }
  }

  void nextQuestion() {
    _isCheckingAnswer = false;
    _quiz = _level.quizzes[questionOrder];
    _isAnswerPressed = false;
    _pressedAnswerInd = -1;
    _closeWrongAnswers = [];
    _isThreeToOneAvailable = true;
    _isFiftyFiftyAvailable = true;
    _isTrueHintAvailable = true;
  }

  Color getColor(int index, BuildContext context) {
    _context = context;
    for (final item in _closeWrongAnswers) {
      if (item == index) {
        return AppTheme.skyBlue2.withOpacity(0.6);
      }
    }
    if (_isAnswerPressed) {
      if (index == _pressedAnswerInd &&
          _quiz.answers[_pressedAnswerInd].isCorrect) {
        return AppTheme.green;
      } else if (index == _pressedAnswerInd &&
          !_quiz.answers[_pressedAnswerInd].isCorrect) {
        return AppTheme.red;
      } else if (index != _pressedAnswerInd && _quiz.answers[index].isCorrect) {
        return AppTheme.green;
      } else {
        return AppTheme.skyBlue2;
      }
    } else {
      return AppTheme.skyBlue2;
    }
  }

  void hints(int index) {
    if (_isFiftyFiftyAvailable && _isThreeToOneAvailable && _isTrueHintAvailable) {
      for (var i = 0; i < _quiz.answers.length; i++) {
        if (!_quiz.answers[i].isCorrect) {
          _closeWrongAnswers.add(i);
        }
      }
      _closeWrongAnswers.shuffle();

      if (index == 0 && _isThreeToOneAvailable ) {
        for (int i = 0; i <= 1; i++) {
          _closeWrongAnswers.removeAt(0);
        }
        _isThreeToOneAvailable = false;
        _threeToOneAmount--;
        _preferenceService.setThreeToOpenAmount(_threeToOneAmount);
      }

      if (index == 1 && _isFiftyFiftyAvailable) {
        for (int i = 0; i < 1; i++) {
          _closeWrongAnswers.removeAt(0);
        }
        _isFiftyFiftyAvailable = false;
        _fiftyFiftyAmount--;
        _preferenceService.setFiftyFiftyAmount(_fiftyFiftyAmount);
      }
      notifyListeners();
    }
  }

  void trueHint(BuildContext context) {
    if (_isTrueHintAvailable && _isThreeToOneAvailable && _isFiftyFiftyAvailable && _trueHintAmount > 0) {
      for (int i = 0; i < _quiz.answers.length; i++) {
        if (_quiz.answers[i].isCorrect) {
          checkAnswer(_quiz.answers[i].isCorrect, i, context);
        }
      }
      _isTrueHintAvailable = false;
      _trueHintAmount--;
      _preferenceService.setTrueHintAmount(_trueHintAmount);
      notifyListeners();
    }
  }

  void plusQuizTimes() {
    int quizTimesAmount = int.parse(_quizTimes[_level.id]);
    quizTimesAmount++;
    _quizTimes[_level.id] = quizTimesAmount.toString();
    _preferenceService.setQuizTimes(_quizTimes);
  }
  void plusQuizTrueAnswers(int rightAnswers) {
    int quizTrueAnswersAmount = int.parse(_quizTrueAnswers[_level.id]);
    if(rightAnswers > quizTrueAnswersAmount){
      quizTrueAnswersAmount = rightAnswers;
      _quizTrueAnswers[_level.id] = quizTrueAnswersAmount.toString();
      _preferenceService.setQuizTrueAnswers(_quizTrueAnswers);
    }
  }

  void endQuiz() {
    _dailyAttempts--;
    _preferenceService.setDailyAttempts(_dailyAttempts);
    for (final item in _answersResult) {
      if (item) {
        _rightAnswers++;
      }
    }
    int _coinsAmount = _storeModel.coinsAmount;
    _coinsAmount = _coinsAmount + (_rightAnswers * 20);
    _preferenceService.setCoinsAmount(_coinsAmount);
    plusQuizTimes();
    plusQuizTrueAnswers(_rightAnswers);

    if (_rightAnswers >= passingScore && _openedLevels <= _level.difficult) {
      _openedLevels++;
      _preferenceService.setOpenedLevel(_openedLevels);
    }
    stopTimer();

    _context.go('/result_screen');
  }

  void checkAnswer(bool isCorrect, int index, BuildContext context) {
    _isAnswerPressed = true;
    _pressedAnswerInd = index;
    _answersResult.add(isCorrect);
    if(!isCorrect) {
      _duration = _duration - 10;
    }
    Future.delayed(const Duration(milliseconds: 800), () {
      if (questionOrder + 1 == _level.gain) {
        endQuiz();
      } else {
        _questionOrder++;
        nextQuestion();
        notifyListeners();
      }
    },
    );
    notifyListeners();
  }

}

