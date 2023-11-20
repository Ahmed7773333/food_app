import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/utils/app_styles.dart';
import 'package:food_app/core/utils/componetns.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../product_details.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (182 / 230),
            mainAxisSpacing: 24,
            crossAxisSpacing: 11),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Componetns.openContainers(
            closedWidget: Container(
              decoration: const BoxDecoration(color: AppColors.itemColor),
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  width: 120.w,
                  height: 120.h,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.temp2),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
                Positioned(
                  top: 14.h,
                  left: 11.w,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 18.w,
                        height: 18.h,
                        decoration: const ShapeDecoration(
                          shape: OvalBorder(
                            side:
                                BorderSide(width: 1, color: AppColors.primary),
                          ),
                        ),
                      ),
                      Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: const ShapeDecoration(
                          color: AppColors.primary,
                          shape: OvalBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 11.h,
                  right: 11.w,
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                    size: 21.r,
                  ),
                ),
                Positioned(
                  bottom: 35.h,
                  left: 11.w,
                  child: Text(
                    'kkajlji',
                    style: AppStyles.smallStyle,
                  ),
                ),
                Positioned(
                  bottom: 16.h,
                  left: 8.w,
                  child: Text(
                    'EGP 1244',
                    style: AppStyles.mediumStyle,
                  ),
                ),
                Positioned(
                  bottom: 23.h,
                  right: 12.5.w,
                  child: InkWell(
                    onTap: () {
                      debugPrint('clicked...');
                    },
                    child: Image.asset(
                      AppImages.plus,
                      height: 23.h,
                      width: 23.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ]),
            ),
            openedWidget: const ProductDetails(),
          );
        });
  }
}
