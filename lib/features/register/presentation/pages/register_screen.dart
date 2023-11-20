import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/config/app_routes.dart';
import 'package:food_app/core/utils/componetns.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

// ignore: use_key_in_widget_constructors
class RegisterScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: 255.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.login),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Componetns.customTextField(
              hint: AppStrings.email,
              controller: controller,
              icon: Icons.email),
          Componetns.customTextField(
              hint: AppStrings.userName,
              controller: controller,
              icon: Icons.person),
          Componetns.customTextField(
            hint: AppStrings.password,
            controller: controller,
            icon: Icons.lock,
            isPassword: true,
            isShow: false,
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
              fixedSize: Size(320.60.w, 60.h),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.success);
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
    );
  }
}
