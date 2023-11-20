import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_strings.dart';
import 'package:food_app/core/utils/app_styles.dart';
import 'package:food_app/core/utils/componetns.dart';
import 'package:food_app/features/home%20layout/presentation/pages/tabs/cart.dart';
import 'package:food_app/features/home%20layout/presentation/pages/tabs/favorite.dart';
import 'package:food_app/features/home%20layout/presentation/pages/tabs/home_tab.dart';
import 'package:food_app/features/home%20layout/presentation/pages/tabs/q.dart';
import 'package:food_app/features/home%20layout/presentation/widgets/drawer.dart';
import 'package:food_app/features/home%20layout/presentation/widgets/tab.dart';
import 'package:food_app/features/search.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final List<Widget> pages = [
    const HomeTab(),
    const FavoriteTab(),
    const Q(),
    const CartTab(),
  ];

  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: currentIndex,
    );
  }

  Color color1 = AppColors.primary;
  Color color2 = AppColors.tabColor;
  Color color3 = AppColors.tabColor;
  Color color4 = AppColors.tabColor;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30.r,
          ),
        ),
        actions: [
          Componetns.openContainers(
            closedWidget: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.r,
            ),
            openedWidget: SearchScreen(),
          ),
          SizedBox(
            width: 8.w,
          ),
        ],
      ),
      drawer: drawer(context),
      backgroundColor: AppColors.secondry,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.w),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.black,
                        size: 12.r,
                      ),
                      Text(
                        AppStrings.workPlace,
                        style: AppStyles.largeStyle,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_downward,
                          color: Colors.black,
                          size: 15.r,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    AppStrings.choose,
                    style: AppStyles.smallStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tabIcon(
                      onTab: () {
                        setState(() {
                          currentIndex = 0;
                        });
                        pageController.jumpToPage(0);
                      },
                      icon: Icons.home,
                      color: color1),
                  tabIcon(
                      onTab: () {
                        setState(() {
                          currentIndex = 1;
                        });
                        pageController.jumpToPage(1);
                      },
                      icon: Icons.favorite,
                      color: color2),
                  tabIcon(
                      onTab: () {
                        setState(() {
                          currentIndex = 2;
                        });
                        pageController.jumpToPage(2);
                      },
                      icon: Icons.question_mark,
                      color: color3),
                  tabIcon(
                      onTab: () {
                        setState(() {
                          currentIndex = 3;
                        });
                        pageController.jumpToPage(3);
                      },
                      icon: Icons.shopping_cart,
                      color: color4),
                ],
              ),
              SizedBox(
                height: 500.h,
                child: PageView(
                  controller: pageController,
                  children: pages,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                      if (currentIndex == 0) {
                        color1 = AppColors.primary;
                        color2 = AppColors.tabColor;
                        color3 = AppColors.tabColor;
                        color4 = AppColors.tabColor;
                      } else if (currentIndex == 1) {
                        color2 = AppColors.primary;
                        color1 = AppColors.tabColor;
                        color3 = AppColors.tabColor;
                        color4 = AppColors.tabColor;
                      } else if (currentIndex == 2) {
                        color3 = AppColors.primary;
                        color2 = AppColors.tabColor;
                        color1 = AppColors.tabColor;
                        color4 = AppColors.tabColor;
                      } else if (currentIndex == 3) {
                        color4 = AppColors.primary;
                        color2 = AppColors.tabColor;
                        color3 = AppColors.tabColor;
                        color1 = AppColors.tabColor;
                      }
                    });
                  },
                ),
              ),
              Container(
                width: 370.w,
                height: 59.h,
                decoration: ShapeDecoration(
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                      bottomLeft: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '0 Items',
                      style: AppStyles.mediumStyle,
                    ),
                    Text(
                      'EGP 0.00',
                      style: AppStyles.mediumStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
