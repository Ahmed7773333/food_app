import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/utils/app_strings.dart';
import 'package:food_app/core/utils/app_styles.dart';
import 'package:food_app/features/home%20layout/presentation/widgets/tab.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondry,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: [
          const Spacer(
            flex: 13,
          ),
          Icon(
            Icons.list,
            color: Colors.black,
            size: 28.r,
          ),
          const Spacer(),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            right: 18.w,
            left: 18.w,
            child: Container(
              width: 397.w,
              height: 285.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.info),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 300.h,
            left: 18.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'title',
                  style: AppStyles.largeStyle,
                ),
                Text(
                  'subtitle',
                  style: AppStyles.semiLargeargeStyle,
                ),
                Text(
                  'details',
                  style: AppStyles.smallStyle,
                ),
                Row(
                  children: [
                    tabIcon(
                        icon: Icons.access_time_rounded,
                        color: AppColors.tabColor),
                    SizedBox(
                      width: 11.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.delTime,
                          style: AppStyles.mediumStyle,
                        ),
                        Text(
                          '25 min',
                          style: AppStyles.smallStyle,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 29.h,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 55.r,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 394.h,
            right: 17,
            child: Container(
              width: 119,
              height: 58,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'EGP 0.00',
                  style: AppStyles.mediumStyle,
                ),
              ),
            ),
          ),
          Positioned(
            right: 34.w,
            bottom: 260.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 104.w,
                  height: 44.h,
                  decoration: ShapeDecoration(
                    color: const Color(0x4FCCCCCC),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: AppStyles.mediumStyle,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        debugPrint('clicked...');
                      },
                      child: Image.asset(
                        AppImages.minus,
                        height: 44.h,
                        width: 44.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('clicked...');
                      },
                      child: Image.asset(
                        AppImages.plus,
                        height: 44.h,
                        width: 44.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 72.h,
            left: 48.w,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                fixedSize: Size(352.w, 75.h),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  AppStrings.add,
                  style: AppStyles.semiLargeargeStyle
                      .copyWith(color: AppColors.onPrimary),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
