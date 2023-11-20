import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Text(
          'cart',
          style: AppStyles.largeStyle,
        ),
      ),
    );
  }
}
