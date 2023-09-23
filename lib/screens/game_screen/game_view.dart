import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_test/screens/game_screen/game_model.dart';
import 'package:crypto_test/screens/store_screen/store_model.dart';
import 'package:crypto_test/utils/app_data.dart';
import 'package:crypto_test/utils/app_helpers.dart';
import 'package:crypto_test/utils/app_style.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<GameModel, StoreModel>(
      builder: (
        BuildContext context,
        GameModel gameModel,
        StoreModel storeModel,
        Widget? child,
      ) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/game_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                /*--Top bar--*/
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  height: 64.h,
                  color: AppTheme.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => {context.go('/'), storeModel.resumeApp(), gameModel.stopTimer()},
                        child: Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: BoxDecoration(
                            color: AppTheme.blue2,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icons/arrow-left.png',
                              width: 16,
                              height: 16,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Questions',
                            style: AppStyle.grey14,
                          ),
                          Text(
                            '${gameModel.questionOrder + 1}/${gameModel.level.gain}',
                            style: AppStyle.white14,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Coins',
                            style: AppStyle.grey14,
                          ),
                          Text(
                            '${storeModel.coinsAmount}',
                            style: AppStyle.white14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 45.h),

                /*--Timer--*/
                Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: Text(
                    gameModel.duration.toString(),
                    textAlign: TextAlign.center,
                    style: AppStyle.white36,
                  ),
                ),

                /*--Question-*/
                SizedBox(
                  height: 145.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: AutoSizeText(
                      gameModel.quiz.question,
                      textAlign: TextAlign.center,
                      style: AppStyle.white24,
                      group: AutoSizeGroup(),
                    ),
                  ),
                ),

                /*--Answers --*/
                Container(
                  height: 350.h,
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        gameModel.quiz.answers.length,
                        (index) => GestureDetector(
                          onTap: () => gameModel.isCheckingAnswer ? {} : gameModel.tapOnAnswer(
                            gameModel.quiz.answers[index].isCorrect,
                            index,
                            context,
                          ),
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            decoration: BoxDecoration(
                              color: gameModel.getColor(index),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: AutoSizeText(
                              gameModel.quiz.answers[index].answer,
                              textAlign: TextAlign.center,
                              style: AppStyle.blue2_18,
                            ),
                          ),
                        ),
                      ).withSpaceBetween(height: 20.h),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),

                /*--Hints--*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*--three to one--*/
                    GestureDetector(
                      onTap: () =>gameModel.threeToOneAmount > 0 ? gameModel.hints(0) : {},
                      child: Container(
                        width: 62.w,
                        height: 62.h,
                        decoration: BoxDecoration(
                          color: AppTheme.skyBlue.withOpacity(
                            gameModel.isThreeToOneAvailable &&
                                    gameModel.threeToOneAmount > 0
                                ? 1
                                : 0.4,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            '75/25',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    /*--fifty fifty--*/
                    GestureDetector(
                      onTap: () =>gameModel.fiftyFiftyAmount > 0 ? gameModel.hints(1) : {},
                      child: Container(
                        width: 62.w,
                        height: 62.h,
                        decoration: BoxDecoration(
                          color: AppTheme.skyBlue.withOpacity(
                            gameModel.isFiftyFiftyAvailable &&
                                    gameModel.fiftyFiftyAmount > 0
                                ? 1
                                : 0.4,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            '50/50',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    /*--open true word--*/
                    GestureDetector(
                      onTap: () => gameModel.trueHint(context),
                      child: Container(
                        width: 62.w,
                        height: 62.h,
                        decoration: BoxDecoration(
                          color: AppTheme.skyBlue.withOpacity(
                            gameModel.isTrueHintAvailable &&
                                    gameModel.trueHintAmount > 0
                                ? 1
                                : 0.4,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            'TRUE',
                            textAlign: TextAlign.center,
                            style: AppStyle.white16
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ].withSpaceBetween(width: 20.w),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
