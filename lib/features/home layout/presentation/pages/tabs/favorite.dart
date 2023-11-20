import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_styles.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Text(
          'fav',
          style: AppStyles.largeStyle,
        ),
      ),
    );
  }
}
