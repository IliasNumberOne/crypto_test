import 'package:crypto_test/models/quiz_item_model.dart';
import 'package:crypto_test/screens/game_screen/game_model.dart';
import 'package:crypto_test/screens/quiz_screen/quiz_model.dart';
import 'package:crypto_test/screens/store_screen/store_model.dart';
import 'package:crypto_test/utils/app_data.dart';
import 'package:crypto_test/utils/app_helpers.dart';
import 'package:crypto_test/utils/app_style.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer3<QuizModel, GameModel, StoreModel>(
      builder: (
        BuildContext context,
        QuizModel quizModel,
        GameModel gameModel,
        StoreModel storeModel,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              /*--Top Bar--*/
              Container(
                height: 64.h,
                color: AppTheme.blue,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      '${storeModel.coinsAmount} coins',
                      style: AppStyle.white16,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => {
                          context.go('/store_screen'),
                          storeModel.resumeApp(),
                        },
                        child: Image.asset(
                          'assets/icons/shopping-bag.png',
                          width: 24.w,
                          height: 24.h,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 62.h),

              /*--level items--*/
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: List.generate(
                    levels.length,
                    (index) {
                      return GestureDetector(
                        onTap: () => gameModel.dailyAttempts > 0 ? {
                          context.go('/game_screen'),
                          gameModel.openQuiz(levels[index].id, context),
                        } : {},
                        child: LevelsItem(
                          levelName: levels[index].name,
                          questionsAmount: levels[index].gain,
                          openedLevels: gameModel.openedLevels,
                          levelDifficulty: levels[index].difficult,
                        ),
                      );
                    },
                  ).withSpaceBetween(height: 20.h),
                ),
              ),
              SizedBox(height: 25.h),

              /*--daily attempts---*/
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 24.w),
                child: Text.rich(
                  textAlign: TextAlign.right,
                  TextSpan(style: AppStyle.white24, children: [
                    TextSpan(
                        text: '${gameModel.dailyAttempts}',
                        style: TextStyle(
                            fontSize: 26.sp,
                            color: gameModel.dailyAttempts == 0
                                ? AppTheme.red
                                : Colors.white)),
                    TextSpan(text: '/5'),
                  ]),
                ),
              ),
              SizedBox(height: 80.h),

              /*--start btn--*/
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.w),
                child: GestureDetector(
                  onTap: () => {
                    context.go('/game_screen'),
                    gameModel.openQuiz(
                        levels[gameModel.openedLevels - 1].id, context),
                  },
                  child: Container(
                    width: double.infinity,
                    height: 64.h,
                    decoration: BoxDecoration(
                      color: AppTheme.skyBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Start",
                        textAlign: TextAlign.center,
                        style: AppStyle.white20
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class LevelsItem extends StatelessWidget {
  final String levelName;
  final int questionsAmount;
  final int openedLevels;
  final int levelDifficulty;

  const LevelsItem(
      {Key? key,
      required this.levelName,
      required this.questionsAmount,
      required this.openedLevels,
      required this.levelDifficulty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0x1A1EA1FF).withOpacity(0.25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            levelName,
            style: AppStyle.white20.copyWith(
              color: Colors.white.withOpacity(
                openedLevels >= levelDifficulty ? 1 : 0.6,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Visibility(
                  visible: !(openedLevels >= levelDifficulty),
                  child: Image.asset(
                    'assets/icons/lock.png',
                    width: 20.w,
                    height: 26.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
              ],
            ),
          ),
          Text(
            '$questionsAmount questions',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white
                  .withOpacity(openedLevels >= levelDifficulty ? 1 : 0.6),
            ),
          )
        ],
      ),
    );
  }
}
