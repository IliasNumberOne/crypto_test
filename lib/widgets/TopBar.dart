import 'package:crypto_test/utils/app_style.dart';
import 'package:crypto_test/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends StatelessWidget {
  final String title;
  const TopBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      color: AppTheme.blue,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyle.white16,
        ),
      ),
    );
  }
}
