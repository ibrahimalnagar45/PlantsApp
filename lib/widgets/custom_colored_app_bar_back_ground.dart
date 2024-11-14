import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBarColoredBackground extends StatelessWidget {
  const CustomAppBarColoredBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
    );
  }
}
