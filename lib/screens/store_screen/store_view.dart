import 'package:crypto_test/screens/game_screen/game_model.dart';
import 'package:crypto_test/screens/store_screen/store_model.dart';
import 'package:crypto_test/utils/app_helpers.dart';
import 'package:crypto_test/utils/app_style.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

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
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              /*--Top Bar--*/
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                height: 64.h,
                color: AppTheme.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: context.pop,
                      child: Container(
                        width: 40.w,
                        height: 40.w,
                        child: Center(
                          child: Image.asset(
                            'assets/icons/arrow-left.png',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${storeModel.coinsAmount} Coins',
                      style: AppStyle.white16,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 38.h),

              /*--Store Items--*/
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    /*--three to one--*/
                    Container(
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '75/25',
                                style: AppStyle.white20,
                              ),
                              Text(
                                'Left 2 incorrect answers',
                                style: AppStyle.white12,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${storeModel.threeToOneAmount}',
                                style: AppStyle.skyBlue2_20,
                              ),
                              SizedBox(width: 18.w),
                              GestureDetector(
                                onTap: () => storeModel.buyHint(1),
                                child: Container(
                                  width: 76.w,
                                  height: 31.h,
                                  decoration: BoxDecoration(
                                    color: AppTheme.skyBlue,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '70 coins',
                                      textAlign: TextAlign.center,
                                      style: AppStyle.white12.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /*--fifty fifty--*/
                    Container(
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '50/50',
                                style: AppStyle.white20,
                              ),
                              Text(
                                'Left 1 incorrect answer',
                                style: AppStyle.white12,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${storeModel.fiftyFiftyAmount}',
                                style: AppStyle.skyBlue2_20,
                              ),
                              SizedBox(width: 18.w),
                              GestureDetector(
                                onTap: () => storeModel.buyHint(2),
                                child: Container(
                                  width: 76.w,
                                  height: 31.h,
                                  decoration: BoxDecoration(
                                    color: AppTheme.skyBlue,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '100 coins',
                                      textAlign: TextAlign.center,
                                      style: AppStyle.white12.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /*--true hint--*/
                    Container(
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TRUE',
                                style: AppStyle.white20,
                              ),
                              Text(
                                'Shows the correct  answer',
                                style: AppStyle.white12,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${storeModel.trueHintAmount}',
                                style: AppStyle.skyBlue2_20,
                              ),
                              SizedBox(width: 18.w),
                              GestureDetector(
                                onTap: () => storeModel.buyHint(3),
                                child:Container(
                                  width: 76.w,
                                  height: 31.h,
                                  decoration: BoxDecoration(
                                    color: AppTheme.skyBlue,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '300 coins',
                                      textAlign: TextAlign.center,
                                      style: AppStyle.white12.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ].withSpaceBetween(height: 20.h),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
