import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget tabIcon({VoidCallback? onTab, IconData? icon, Color? color}) {
  return InkWell(
    onTap: onTab,
    child: Container(
      width: 57.w,
      height: 51.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: color!),
          borderRadius: BorderRadius.circular(3.r),
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 45.r,
          color: color,
        ),
      ),
    ),
  );
}
