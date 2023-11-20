import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_colors.dart';

import '../config/app_routes.dart';
import '../core/utils/app_images.dart';
import '../core/utils/app_strings.dart';
import '../core/utils/app_styles.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: 330.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.makarona),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStrings.startTitle,
                style:
                    AppStyles.largeStyle.copyWith(color: AppColors.onPrimary),
              ),
              Text(
                AppStrings.startSubTitle,
                style:
                    AppStyles.smallStyle.copyWith(color: AppColors.onPrimary),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFF2DB6A3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      bottomLeft: Radius.circular(15.r),
                    ),
                  ),
                  fixedSize: Size(179.w, 65.h),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.signIn);
                },
                child: Center(
                  child: Text(
                    AppStrings.signIn,
                    style: AppStyles.semiLargeargeStyle
                        .copyWith(color: AppColors.onPrimary),
                  ),
                ),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.r),
                      bottomRight: Radius.circular(15.r),
                    ),
                  ),
                  fixedSize: Size(179.w, 65.h),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.register);
                },
                child: Center(
                  child: Text(
                    AppStrings.register,
                    style: AppStyles.semiLargeargeStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
