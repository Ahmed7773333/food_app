import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/utils/app_strings.dart';
import 'package:food_app/core/utils/app_styles.dart';

import 'home layout/presentation/widgets/drawer.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class SearchScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> sources = ['All', 'Pizaa', 'asdf', 'gfhs'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(
            Icons.menu,
            color: AppColors.onPrimary,
            size: 30.r,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.onPrimary,
              size: 30.r,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
        ],
      ),
      drawer: drawer(context),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 579.h,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColors.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 120.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 337.w,
                  height: 45.h,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: AppStrings.search,
                      hintStyle: AppStyles.smallStyle,
                      suffixIcon: Icon(
                        Icons.search,
                        size: 18.r,
                      ),
                      fillColor: const Color(0x68FFF8F3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 46.h,
                ),
                DefaultTabController(
                  length: sources.length,
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    onTap: (index) {},
                    isScrollable: true,
                    tabs: sources
                        .map((e) => Tab(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.h, horizontal: 10.w),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: AppColors.primary),
                                  borderRadius: BorderRadius.circular(35.r),
                                ),
                                child: Text(
                                  e,
                                  style: AppStyles.mediumStyle
                                      .copyWith(color: AppColors.tabTextColor),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 485.h,
                  width: 363.w,
                  child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 32.h,
                        );
                      },
                      itemBuilder: ((context, index) {
                        return Container(
                          width: 363.w,
                          height: 152.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: AppColors.onPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 21.h,
                                right: 19.w,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 22.r,
                                ),
                              ),
                              Positioned(
                                top: 47.h,
                                right: 45.w,
                                child: Image.asset(
                                  AppImages.temp2,
                                  height: 78.04.h,
                                  width: 116.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 36.h,
                                left: 13.w,
                                child: Text(
                                  'Grilled Beef',
                                  style: AppStyles.mediumStyle,
                                ),
                              ),
                              Positioned(
                                top: 68.h,
                                left: 13.w,
                                child: Text(
                                  'Spicy grilled beef with special seasoning',
                                  style: AppStyles.smallStyle,
                                ),
                              ),
                              Positioned(
                                bottom: 19.h,
                                left: 11.w,
                                child: Text(
                                  'EGP 100.00',
                                  style: AppStyles.mediumStyle,
                                ),
                              ),
                            ],
                          ),
                        );
                      })),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
