import 'package:flutter/material.dart';

import 'custom_colored_app_bar_back_ground.dart';
import 'custom_text_feild.dart';

class CustomHomeUpperSection extends StatelessWidget {
  const CustomHomeUpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomAppBarColoredBackground(),
        Positioned(
          child: WelcomeWidget(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: CustomTextFeild(),
        ),
      ],
    );
  }
}
