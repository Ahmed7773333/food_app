import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_styles.dart';

Widget drawerRow({IconData? icon, String? title, VoidCallback? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          size: 24.r,
          color: AppColors.tabColor,
        ),
        Text(
          title!,
          style: AppStyles.mediumStyle,
        ),
        SizedBox(
          width: 8.w,
        ),
      ],
    ),
  );
}
