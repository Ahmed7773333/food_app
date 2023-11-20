import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class Q extends StatelessWidget {
  const Q({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Text(
          'q',
          style: AppStyles.largeStyle,
        ),
      ),
    );
  }
}
