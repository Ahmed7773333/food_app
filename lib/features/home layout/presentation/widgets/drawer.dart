import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/config/app_routes.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_strings.dart';
import 'package:food_app/core/utils/app_styles.dart';
import 'package:food_app/features/home%20layout/presentation/widgets/drawer_row.dart';

Widget drawer(context) {
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 44.w,
              height: 44.h,
              padding: EdgeInsets.symmetric(vertical: 11.h),
              decoration: ShapeDecoration(
                color: AppColors.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              child: Center(
                child: Text(
                  'AD',
                  style: AppStyles.semiLargeargeStyle.copyWith(
                    color: AppColors.onPrimary,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              children: [
                Text(
                  'AnimatedDre',
                  style: AppStyles.mediumStyle,
                ),
                Text(
                  'justdre@dummy.com',
                  style: AppStyles.smallStyle,
                ),
              ],
            ),
          ],
        ),
        drawerRow(icon: Icons.home, title: AppStrings.home),
        drawerRow(icon: Icons.data_exploration_sharp, title: AppStrings.recent),
        drawerRow(
            icon: Icons.contact_mail_rounded, title: AppStrings.addresses),
        drawerRow(icon: Icons.notifications, title: AppStrings.notifications),
        drawerRow(icon: Icons.location_pin, title: AppStrings.location),
        drawerRow(icon: Icons.settings, title: AppStrings.settings),
        SizedBox(
          height: 15.h,
        ),
        drawerRow(
            icon: Icons.logout,
            title: AppStrings.logout,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.signIn, (route) => false);
            }),
        SizedBox(
          height: 15.h,
        ),
      ],
    ),
  );
}
