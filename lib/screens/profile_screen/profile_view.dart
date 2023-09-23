import 'package:crypto_test/screens/game_screen/game_model.dart';
import 'package:crypto_test/screens/profile_screen/profile_model.dart';
import 'package:crypto_test/screens/store_screen/store_model.dart';
import 'package:crypto_test/utils/app_data.dart';
import 'package:crypto_test/utils/app_helpers.dart';
import 'package:crypto_test/utils/app_style.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:crypto_test/widgets/TopBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer3<ProfileModel, StoreModel, GameModel>(
      builder: (
        BuildContext context,
        ProfileModel profileModel,
        StoreModel storeModel,
        GameModel gameModel,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              TopBar(title: '${storeModel.coinsAmount} coins'),
              SizedBox(height: 21.h),

              /*--switches category--*/
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 62.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => profileModel.switchCategory(0),
                      child: Text(
                        'Quizzes',
                        style: AppStyle.white20.copyWith(
                          color: Colors.white.withOpacity(
                              profileModel.category == 0 ? 1 : 0.6),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => profileModel.switchCategory(1),
                      child: Text(
                        'Hints',
                        style: AppStyle.white20.copyWith(
                          color: Colors.white.withOpacity(
                              profileModel.category == 1 ? 1 : 0.6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: List.generate(
                    profileModel.category == 0 ? levels.length : 3,
                    (index) => CategoryItem(
                      category: profileModel.category,
                      quizName: levels[index].name,
                      quizQuestions: levels[index].gain,
                      quizTimes: gameModel.quizTimes[index],
                      quizTrueAnswers: gameModel.quizTrueAnswers[index],
                      index: index,
                      storeModel: storeModel,
                    ),
                  ).withSpaceBetween(height: 20.h),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final int category;
  final String quizName;
  final int quizQuestions;
  final String quizTimes;
  final String quizTrueAnswers;
  final int index;
  final StoreModel storeModel;

  CategoryItem({
    Key? key,
    required this.category,
    required this.quizName,
    required this.quizQuestions,
    required this.quizTimes,
    required this.quizTrueAnswers,
    required this.index,
    required this.storeModel
  }) : super(key: key);

  final List<String> hintsName = [
    '75/25',
    '50/50',
    'TRUE',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0x1A1EA1FF).withOpacity(0.25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (category == 0) ...[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quizName,
                  textAlign: TextAlign.left,
                  style: AppStyle.white20,
                ),
                SizedBox(height: 3.h),
                Text(
                  '$quizTimes times',
                  textAlign: TextAlign.left,
                  style: AppStyle.white16,
                )
              ],
            ),
            Text.rich(
              TextSpan(
                  style: AppStyle.white16.copyWith(fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(text: quizTrueAnswers),
                    TextSpan(
                        text: '/$quizQuestions',
                        style: TextStyle(color: Colors.white.withOpacity(0.6))),
                  ]),
            ),
          ] else ...[
            Text(
              hintsName[index],
              style: AppStyle.white20,
            ),
            Text(
              'x ${index == 0 ? storeModel.threeToOneAmount : index == 1 ? storeModel.fiftyFiftyAmount : storeModel.trueHintAmount}',
              style: AppStyle.white20,
            ),
          ]
        ],
      ),
    );
  }
}
