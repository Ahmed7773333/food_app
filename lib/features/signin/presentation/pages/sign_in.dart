import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/config/app_routes.dart';
import 'package:food_app/core/utils/app_styles.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/componetns.dart';

// ignore: use_key_in_widget_constructors
class SignIn extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: 300.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.human),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                AppStrings.welcome,
                style: AppStyles.largeStyle,
              ),
              Text(
                AppStrings.subWelcome,
                style: AppStyles.mediumStyle,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Componetns.customTextField(
                  hint: '${AppStrings.userName} ${AppStrings.email}',
                  controller: controller,
                  icon: Icons.person),
              Componetns.customTextField(
                hint: AppStrings.password,
                controller: controller,
                icon: Icons.lock,
                isPassword: true,
                isShow: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.register);
                    },
                    child: Text(
                      AppStrings.signUp,
                      style: AppStyles.mediumStyle
                          .copyWith(color: AppColors.onPrimary),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      AppStrings.forget,
                      style: AppStyles.mediumStyle,
                    ),
                  ),
                ],
              )
            ],
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
              fixedSize: Size(320.60.w, 60.h),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.home);
            },
            child: Center(
              child: Text(
                AppStrings.logIn,
                style: AppStyles.semiLargeargeStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
