import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/utils/app_strings.dart';
import 'package:food_app/core/utils/app_styles.dart';

import '../config/app_routes.dart';
import '../core/utils/app_colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

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
                image: AssetImage(AppImages.success),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            AppStrings.successMessage,
            style: AppStyles.largeStyle,
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
              fixedSize: Size(320.60.w, 60.h),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.signIn);
            },
            child: Center(
              child: Text(
                AppStrings.continueButton,
                style: AppStyles.semiLargeargeStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
