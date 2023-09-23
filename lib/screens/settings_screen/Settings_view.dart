import 'package:crypto_test/utils/app_helpers.dart';
import 'package:crypto_test/utils/app_style.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:crypto_test/widgets/TopBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  final List<String> icons = [
    'assets/icons/crown.png',
    'assets/icons/privacy.png',
    'assets/icons/terms.png',
    'assets/icons/support.png',
  ];
  final List<String> titles = [
    'Premium for 0.99\$',
    'Privacy policy',
    'Terms of Use',
    'Support',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const TopBar(title: 'Settings'),
          SizedBox(height: 62.h),
          Column(
            children: List.generate(
              icons.length,
              (index) => Container(
                width: double.infinity,
                height: 56.h,
                padding: EdgeInsets.only(left: 16.w),
                decoration: const BoxDecoration(
                  color: AppTheme.blue,
                ),
                child: Row(
                  children: [
                    Image.asset(icons[index], width: 20.w, height: 21.h,),
                    SizedBox(width: 16.w),
                    Text(
                      titles[index],
                      style: AppStyle.white16,
                    ),
                  ],
                ),
              ),
            ).withSpaceBetween(height: 16.h),
          ),
        ],
      ),
    );
  }
}
