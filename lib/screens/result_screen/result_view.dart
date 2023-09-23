import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_test/screens/game_screen/game_model.dart';
import 'package:crypto_test/screens/store_screen/store_model.dart';
import 'package:crypto_test/utils/app_style.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

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
            child: Center(
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    gameModel.rightAnswers >= gameModel.passingScore ?  'Well done!' :'Nice try!',
                    textAlign: TextAlign.center,
                    style: AppStyle.white24,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '+${gameModel.rightAnswers * 20} Coins',
                    textAlign: TextAlign.center,
                    style: AppStyle.skyBlue2_20,
                  ),
                  SizedBox(height: 58.h),
                  Container(
                      width: 280.w,
                      child: gameModel.rightAnswers >= gameModel.passingScore
                          ? AutoSizeText(
                              'You got ${gameModel.rightAnswers}/${gameModel.level.gain} correct answers. Now you can complete next quiz.',
                              style: AppStyle.white20,
                              textAlign: TextAlign.center,
                            )
                          : AutoSizeText(
                              'You got ${gameModel.rightAnswers}/${gameModel.level.gain} correct answers. You must answer ${(gameModel.passingScore - gameModel.rightAnswers)} or more questions to advance to the next level.',
                              style: AppStyle.white20,
                              textAlign: TextAlign.center,
                            )),
                  SizedBox(height: 125.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: GestureDetector(
                      onTap: () => {
                        gameModel.resetValues(),
                        storeModel.resumeApp(),
                        context.go('/'),
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
                            'Main screen',
                            textAlign: TextAlign.center,
                            style: AppStyle.white20
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
